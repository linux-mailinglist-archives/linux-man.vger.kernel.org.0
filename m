Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 15C54FC2C0
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2019 10:38:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726185AbfKNJis convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Thu, 14 Nov 2019 04:38:48 -0500
Received: from tyo162.gate.nec.co.jp ([114.179.232.162]:43659 "EHLO
        tyo162.gate.nec.co.jp" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726024AbfKNJis (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Nov 2019 04:38:48 -0500
Received: from mailgate02.nec.co.jp ([114.179.233.122])
        by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xAE9bEUn019805
        (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Thu, 14 Nov 2019 18:37:14 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
        by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xAE9bE43012698;
        Thu, 14 Nov 2019 18:37:14 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
        by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xAE9adqI022383;
        Thu, 14 Nov 2019 18:37:14 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.147] [10.38.151.147]) by mail03.kamome.nec.co.jp with ESMTP id BT-MMP-760305; Thu, 14 Nov 2019 18:35:42 +0900
Received: from BPXM23GP.gisp.nec.co.jp ([10.38.151.215]) by
 BPXC19GP.gisp.nec.co.jp ([10.38.151.147]) with mapi id 14.03.0439.000; Thu,
 14 Nov 2019 18:35:41 +0900
From:   Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
To:     Li Xinhai <lixinhai.lxh@gmail.com>
CC:     "linux-mm@kvack.org" <linux-mm@kvack.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michal Hocko <mhocko@suse.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Hugh Dickins <hughd@google.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] mm: Check range first in queue_pages_test_walk
Thread-Topic: [PATCH v4 1/2] mm: Check range first in queue_pages_test_walk
Thread-Index: AQHVljTIAjGNOBp1iE2ekRd3spmr1KeJ2nmA
Date:   Thu, 14 Nov 2019 09:35:41 +0000
Message-ID: <20191114093541.GB2144@hori.linux.bs1.fc.nec.co.jp>
References: <1573218104-11021-1-git-send-email-lixinhai.lxh@gmail.com>
 <1573218104-11021-2-git-send-email-lixinhai.lxh@gmail.com>
In-Reply-To: <1573218104-11021-2-git-send-email-lixinhai.lxh@gmail.com>
Accept-Language: en-US, ja-JP
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.34.125.150]
Content-Type: text/plain; charset="iso-2022-jp"
Content-ID: <F29D6BB49484BE4488D56F4D67A6E8EA@gisp.nec.co.jp>
Content-Transfer-Encoding: 8BIT
MIME-Version: 1.0
X-TM-AS-MML: disable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Nov 08, 2019 at 09:01:43PM +0800, Li Xinhai wrote:
> Checking unmapped hole and updating the previous vma must be handled first,
> otherwise the unmapped hole could be calculated from a wrong previous vma.
> 
> Several commits were relevant to this error:
> commit 6f4576e3687b
> ("mempolicy: apply page table walker on queue_pages_range()"),
> This commit was correct, the VM_PFNMAP check was after updateing previous
> vma
> 
> commit 48684a65b4e3
> (mm: pagewalk: fix misbehavior of walk_page_range for vma(VM_PFNMAP)),
> This commit added VM_PFNMAP check before updateing previous vma. Then,
> there were two VM_PFNMAP check did same thing twice.
> 
> commit acda0c334028
> (mm/mempolicy.c: get rid of duplicated check for vma(VM_PFNMAP) in queue_page
> s_range()),
> This commit tried to fix the duplicated VM_PFNMAP check, but it wrongly
> removed the one which was after updateing vma.
> 
> Fixes: acda0c334028 (mm/mempolicy.c: get rid of duplicated check for vma(VM_PFNMAP) in queue_page
> s_range())
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Hugh Dickins <hughd@google.com>
> Cc: linux-man <linux-man@vger.kernel.org>
> Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>

Reviewed-by: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
