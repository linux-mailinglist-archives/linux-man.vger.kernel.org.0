Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C84B329A9C0
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 11:35:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436765AbgJ0Kft (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 06:35:49 -0400
Received: from mga03.intel.com ([134.134.136.65]:56360 "EHLO mga03.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2436826AbgJ0KfC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 27 Oct 2020 06:35:02 -0400
IronPort-SDR: 3hvOf2C77882+MsFJ/sgFKbXFHCIAvqp5e5JTFvs8mb/oRrMhFoSV9bFwWTmF7NOT+3+5AvzXM
 3Mry2zcULjcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="168157141"
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; 
   d="scan'208";a="168157141"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2020 03:34:58 -0700
IronPort-SDR: fCCXg3Uvd2xxqpaV0RemH16IHtxVBAxHECvOyV7FAdgKrTcNhZHFE8LE2tNzVQCqme50Q1C8bJ
 8txAYNxR0jGg==
X-IronPort-AV: E=Sophos;i="5.77,423,1596524400"; 
   d="scan'208";a="535734881"
Received: from abudanko-mobl.ccr.corp.intel.com (HELO [10.249.227.194]) ([10.249.227.194])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2020 03:34:55 -0700
Subject: Re: [PATCH v1] perf_event_open.2: update the man page with
 CAP_PERFMON related information
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        James Morris <jmorris@namei.org>,
        Serge Hallyn <serge@hallyn.com>,
        Stephen Smalley <sds@tycho.nsa.gov>,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andi Kleen <ak@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>
References: <18d1083d-efe5-f5f8-c531-d142c0e5c1a8@linux.intel.com>
 <ed6f63bd-5dcb-425d-60ee-311a68756bfe@gmail.com>
 <e3ff6ff2-8fa5-de27-3bc4-f578b6957de8@linux.intel.com>
 <CAKgNAkirXKh6VocM7-gwvC1CoDgqV7NjpU5OSVvXJX9mwiNnBg@mail.gmail.com>
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <7a2bbefa-651d-01c2-e0dd-03e8e4d5cef3@linux.intel.com>
Date:   Tue, 27 Oct 2020 13:34:52 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkirXKh6VocM7-gwvC1CoDgqV7NjpU5OSVvXJX9mwiNnBg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 27.10.2020 12:25, Michael Kerrisk (man-pages) wrote:
> Hi Alexei,
> 
> Would you be able to refresh this patch and resend please?

Sure. Will do.

Regards,
Alexei
