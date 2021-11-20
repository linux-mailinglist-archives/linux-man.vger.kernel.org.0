Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E020457DCF
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 13:19:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230480AbhKTMWx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 07:22:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230381AbhKTMWw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 07:22:52 -0500
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7A75C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 04:19:49 -0800 (PST)
Received: by mail-io1-xd36.google.com with SMTP id e144so16368526iof.3
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 04:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=72LEio0jQCbjjepJv2rGyviL0j9wl/sRKhNqLX+NrNs=;
        b=Yxi6TzaFA2DmUuSfMtZkJnCmWzQCBDxE3hEANxqF3ZruTuq6yH59L6liSg5caagakG
         RtSTADGFXtc5IoG2OifSkJO2aNyzey9CYbZcktM0jF4h+TIZIlEjKaWjPF3ccTwxVg3T
         G3/GJmY/vr+UeSLzZzoI0BWS8FAS6SPFSqApJStnS8VsudjHBu6e803wiQoACIeJ1XKX
         gqDGZK0DpQy9nMm1vnUOud90qm/iaysEkcr4QuS3aZrEojaupL/S53xOCg5Xsr1yUI+k
         ReYeSPORQwfzOZ3MuCCoiCOSlvGNY6c5CArF/Ock3jy4a2TjR24jtY7W7X6OZmElxvUR
         XzcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=72LEio0jQCbjjepJv2rGyviL0j9wl/sRKhNqLX+NrNs=;
        b=i5lSbEXzganlvdDcCUoxuERc5ecj2Ft6bcy6XUn+zj9+5xmCOqt8E9n2H4ASC58PAF
         uzwKbXYBXgmxSlDXAcFaFIGxdAvGMxXWK82Fws4T+s9hM4V2LOSdKzAj/D4QgOr8Zc9o
         S5uLZ3CMm+DtlXwIVTe/wYtQCqnlgRGwz/0Z9Xogrh31xCMHpY/wgmil09Gqh7EcFYLT
         bhSuoD2rL8/4wSsQO2eU8iNorDaFifYacwYtmcNFh1ygT7WjrJscB442hmQzAzv274y3
         s+rGl7wod7as04p3lkP/YhXLvyxRJ0fz5fnJ5w3cYWs8wq3fhGnc6qtP5cYZvpg3hkQQ
         VKBw==
X-Gm-Message-State: AOAM530dh+7Of41SLBeEBo3BFnoyahyG4txRHNW3r8mTIGmFFcSpOrfo
        hxvkiNkDwI2o9J6n1P5Q650BwXOM7H5wZLH/aGU=
X-Google-Smtp-Source: ABdhPJw/3xz0/h+e1ZeSp4Nm1w9iVq41wp5HVsMMMdTprEdytwZ+K8RE9T5J3V+TMWnraAna8/+p4GMvtzjMWA/xEw4=
X-Received: by 2002:a05:6602:29c2:: with SMTP id z2mr11165342ioq.196.1637410789195;
 Sat, 20 Nov 2021 04:19:49 -0800 (PST)
MIME-Version: 1.0
References: <cover.1635135968.git.repnop@google.com> <6ea10a58db3446aabc729b1082611bdadb1ce4ed.1635135968.git.repnop@google.com>
In-Reply-To: <6ea10a58db3446aabc729b1082611bdadb1ce4ed.1635135968.git.repnop@google.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Sat, 20 Nov 2021 14:19:38 +0200
Message-ID: <CAOQ4uxj4xxp8g6Y0u1XtQ6hBBM=nba2j9XjJKp=Lg3yRzUE-Yg@mail.gmail.com>
Subject: Re: [PATCH 1/1] Document the new fanotify initialization flag FAN_REPORT_PIDFD
To:     Matthew Bobrowski <repnop@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
>
> This provides an explanation on the kind of additional information that can
> be returned alongside the generic struct fanotify_event_metadata and in
> what form this additional contextual information is delievered to a
> listening application.
>
> Signed-off-by: Matthew Bobrowski <repnop@google.com>
> ---
>  man2/fanotify_init.2 | 54 +++++++++++++++++++++++++
>  man7/fanotify.7      | 95 +++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 147 insertions(+), 2 deletions(-)
>
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 0d83e817f..f65b4fa10 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -298,6 +298,60 @@ for additional details.
>  This is a synonym for
>  .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
>  .PP
> +.TP
> +.B FAN_REPORT_PIDFD " (since Linux 5.15)"

Matthew,

For v2, please document commit id.
Please also consider including below cleanup patch
to document commit ids that we missed in v5.9 update.

Thanks,
Amir.

--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -213,6 +213,7 @@ See
 for additional details.
 .TP
 .BR FAN_REPORT_DIR_FID " (since Linux 5.9)"
+.\" commit 83b7a59896dd24015a34b7f00027f0ff3747972f
 Events for fanotify groups initialized with this flag will contain
 (see exceptions below) additional information about a directory object
 correlated to an event.
@@ -245,6 +246,7 @@ See
 for additional details.
 .TP
 .BR FAN_REPORT_NAME " (since Linux 5.9)"
+.\" commit 929943b38daf817f2e6d303ea04401651fc3bc05
 Events for fanotify groups initialized with this flag will contain additional
 information about the name of the directory entry correlated to an event.
 This flag must be provided in conjunction with the flag
