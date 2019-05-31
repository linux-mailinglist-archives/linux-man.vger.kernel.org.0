Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 865B6313C8
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2019 19:25:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726593AbfEaRZ4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 May 2019 13:25:56 -0400
Received: from mx1.redhat.com ([209.132.183.28]:36848 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726535AbfEaRZz (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 31 May 2019 13:25:55 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id B68673179B4A;
        Fri, 31 May 2019 17:25:55 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-219.str.redhat.com [10.33.192.219])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id ADB1D46E6D;
        Fri, 31 May 2019 17:25:53 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Mark Wielaard <mark@klomp.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pkey_alloc.2, mprotect.2: _GNU_SOURCE is required for the pkey functions.
References: <1559171155-2044-1-git-send-email-mark@klomp.org>
Date:   Fri, 31 May 2019 19:25:52 +0200
In-Reply-To: <1559171155-2044-1-git-send-email-mark@klomp.org> (Mark
        Wielaard's message of "Thu, 30 May 2019 01:05:55 +0200")
Message-ID: <871s0eili7.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Fri, 31 May 2019 17:25:55 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Mark Wielaard:

> To get the pkey_alloc, pkey_free and pkey_mprotect functions
> _GNU_SOURCE needs to be defined before including sys/mman.h.

Change looks good to me.  Thanks.

Florian
