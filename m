Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CCF2F6581D
	for <lists+linux-man@lfdr.de>; Thu, 11 Jul 2019 15:52:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728124AbfGKNww (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Jul 2019 09:52:52 -0400
Received: from mx1.redhat.com ([209.132.183.28]:42100 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725971AbfGKNwv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 11 Jul 2019 09:52:51 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 927D581F18;
        Thu, 11 Jul 2019 13:52:51 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.136])
        by smtp.corp.redhat.com (Postfix) with SMTP id 74BA01001B10;
        Thu, 11 Jul 2019 13:52:50 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
        oleg@redhat.com; Thu, 11 Jul 2019 15:52:51 +0200 (CEST)
Date:   Thu, 11 Jul 2019 15:52:49 +0200
From:   Oleg Nesterov <oleg@redhat.com>
To:     Michal Sekletar <msekleta@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Lennart Poettering <lennart@poettering.net>
Subject: Re: [PATCH] signal.7: clarify that siginfo_t isn't changed on
 coalescing
Message-ID: <20190711135249.GB14901@redhat.com>
References: <20190711125324.4740-1-msekleta@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190711125324.4740-1-msekleta@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Thu, 11 Jul 2019 13:52:51 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 07/11, Michal Sekletar wrote:
>
> --- a/man7/signal.7
> +++ b/man7/signal.7
> @@ -426,6 +426,11 @@ Real-time signals are distinguished by the following:
>  Multiple instances of real-time signals can be queued.
>  By contrast, if multiple instances of a standard signal are delivered
>  while that signal is currently blocked, then only one instance is queued.
> +Note that the
> +.I siginfo_t
> +structure associated with the signal already in queue is not overwritten
> +on arrival of subsequent instances of the same signal hence the process would
> +receive metadata associated with the first instance of the signal.
>  .IP 2. 4

ACK

