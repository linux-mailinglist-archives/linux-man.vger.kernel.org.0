Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B73A72E8CF9
	for <lists+linux-man@lfdr.de>; Sun,  3 Jan 2021 16:45:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726248AbhACPpB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jan 2021 10:45:01 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:41464 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725840AbhACPpA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jan 2021 10:45:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1609688614;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Uzb6Ose5CVWtCLqLD28JeDnKOalYPQMRTZZFzytaCzo=;
        b=EkMrz0dgHIRx6y8q4JPLA3hs6iHCjFKMIteEdsIPTxCqy4qiV7ZfK1d4tEOrg2PyQ9a2T/
        p3eTA9mHuSieFDBR+zviQcjkXAlDTfw0r1rFhT/8VDh+b/JGdUhpfbSvIvp41NNK5X9drm
        sKKAkjrf8Qw26UIa5Ul7bMCohXwbahE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-408-PX7LCnyrMvuPCruNQsGEcQ-1; Sun, 03 Jan 2021 10:43:32 -0500
X-MC-Unique: PX7LCnyrMvuPCruNQsGEcQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88723801AC0;
        Sun,  3 Jan 2021 15:43:31 +0000 (UTC)
Received: from x2.localnet (ovpn-113-86.rdu2.redhat.com [10.10.113.86])
        by smtp.corp.redhat.com (Postfix) with ESMTP id A1A6860D01;
        Sun,  3 Jan 2021 15:43:30 +0000 (UTC)
From:   Steve Grubb <sgrubb@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>
Cc:     Amir Goldstein <amir73il@gmail.com>, linux-man@vger.kernel.org,
        Jan Kara <jack@suse.cz>
Subject: Re: [PATCH] fanotify: Document FAN_AUDIT flag
Date:   Sun, 03 Jan 2021 10:43:28 -0500
Message-ID: <4619055.31r3eYUQgx@x2>
Organization: Red Hat
In-Reply-To: <20201202154354.30778-1-jack@suse.cz>
References: <20201202154354.30778-1-jack@suse.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wednesday, December 2, 2020 10:43:54 AM EST Jan Kara wrote:
> Document FAN_AUDIT and related FAN_ENABLE_AUDIT flags.
> 
> Signed-off-by: Jan Kara <jack@suse.cz>

Looks good. Sorry about the delay.

Acked-by: Steve Grubb <sgrubb@redhat.com>

> ---
>  man2/fanotify_init.2 | 7 +++++++
>  man7/fanotify.7      | 9 ++++++++-
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> OK, here's my attempt to document the FAN_AUDIT flag. It would be nice if
> Steve glanced over it from the audit side to check things are sane.
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index ca03b11dc98a..6becc7a680db 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -155,6 +155,13 @@ supplied to
>  (see
>  .BR fanotify (7)).
>  .TP
> +.BR FAN_ENABLE_AUDIT " (since Linux 4.15)"
> +.\" commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
> +Enable generation of audit log records about access mediation performed by
> +permission events. The permission event response has to be marked with
> +.B FAN_AUDIT
> +flag for audit log record to be generated.
> +.TP
>  .BR FAN_REPORT_FID " (since Linux 5.1)"
>  .\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
>  This value allows the receipt of events which contain additional
> information diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 5804a1f30d6c..b5f096304cf4 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -588,7 +588,14 @@ to deny the file operation.
>  .PP
>  If access is denied, the requesting application call will receive an
>  .BR EPERM
> -error.
> +error. Additionally, if the notification group has been created with
> +.B FAN_ENABLE_AUDIT
> +flag,
> +.B FAN_AUDIT
> +flag can be set in the
> +.I response
> +field. In that case audit subsystem will log information about the access
> +decision to the audit logs.
>  .\"
>  .SS Closing the fanotify file descriptor
>  When all file descriptors referring to the fanotify notification group are




