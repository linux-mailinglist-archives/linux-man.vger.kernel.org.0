Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F05369D116
	for <lists+linux-man@lfdr.de>; Mon, 20 Feb 2023 17:08:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230122AbjBTQIg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Feb 2023 11:08:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231265AbjBTQIg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Feb 2023 11:08:36 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E73B464
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 08:08:34 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id n31so1226942wms.2
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 08:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3SSOQHIISHg1bcuAJEw3W/ZtIO3yAYhSD5s0Yqm9Ovs=;
        b=FprWhTeCVbDuh+1OUeePkmRanjtPWMX/6pp1iHdvRST5811WUI/xpayL4LAQ1Cv0IT
         MJ3M9JSTKtq7rHsjENvvsHHAbPl13eJ1I9TyUg2FlB0fPFjDmr3yKbd2rcrE0plLF26E
         z2vyqoAhITA/VbIE0aoE2BQCLYQp9YykOdCcgmSHDDVOo/254SIZLSS+nyMaRLPnDawe
         UoZt08Hy5T8QzlW6HcZ3IqU+MWXKk7Eul+DD2yd+eMPQ5w6Wo3VyIN+I0I+WkO8U21XE
         ZogDIRt3XUqy7yTJ582MDuUagG6w6GnB1Cuj7aWii2bYtUk2O4G2AqmMVFIuMeqb1XY2
         574A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3SSOQHIISHg1bcuAJEw3W/ZtIO3yAYhSD5s0Yqm9Ovs=;
        b=ukMNQCmZkVDohSM4PSuYgV15290Xlgj/cP3Tn6XLrYVi5yJ+peVXYFSOHdbWxZ1moa
         rvmVl7+V1Q4AfcFtnOU5oUnDtvT4tO6UoTbiD/gGm9U/U146TtkKPzShpVqJ2VTif0O7
         Wxt4sCd21WPv1FCz/bG/WxE089cuGSSOux+4hihW1FpKE6LYvjYE1yXrYAQJcVOhiqoV
         s82zYQePK/7gsFl0IVm7TW2Z3e4zy/vA/y06gAjstEX/9IJ4ejaqUOE0+JusC3uBvj7H
         aE2SiZBj/d2xwlRXfkuJthVM9XV5NHFK/QTvj3P5TI8Wus3wFQeg4p9HSimaSSDh8dnh
         pdJg==
X-Gm-Message-State: AO0yUKWDcLiZRzeNkJwze2LRMZgneizyippKG7JZWRyiU5f4ePp0DtsJ
        1fcV/1t/JI+bH40vsvpgmmfQkYuea3DnhA==
X-Google-Smtp-Source: AK7set/qSG4tEvF4fjgz+1vsHVxkqWnQl/gxfGG2VHgWRX5kRootcplDTvSkclh23uipcAVonq7bKw==
X-Received: by 2002:a05:600c:1714:b0:3dc:2b62:ee9f with SMTP id c20-20020a05600c171400b003dc2b62ee9fmr6759928wmn.3.1676909313039;
        Mon, 20 Feb 2023 08:08:33 -0800 (PST)
Received: from T14s-004530 ([185.213.253.252])
        by smtp.gmail.com with ESMTPSA id u17-20020a7bc051000000b003dff2b493c8sm1171274wmc.36.2023.02.20.08.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 08:08:32 -0800 (PST)
Date:   Mon, 20 Feb 2023 18:08:30 +0200
From:   Guy Shefy <guyshefyb@gmail.com>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process
 group
Message-ID: <Y/Oa/t5tPj0uTDNz@T14s-004530>
References: <Y/OWxEajSbwD8UsL@T14s-004530>
 <d50e6acf-bf10-f72d-b04b-e0fe8b2d1f20@gmail.com>
 <Y/OZbDq9AGoFI0iE@T14s-004530>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y/OZbDq9AGoFI0iE@T14s-004530>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 961b64515b805caadb5a77e3592eb3e883c57e0d Mon Sep 17 00:00:00 2001
From: Guy Shefy <guyshefyb@gmail.com>
Date: Mon, 20 Feb 2023 17:54:40 +0200
Subject: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process group

found using test program:

#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
	pid_t pid_a = fork();
	if (!pid_a) {
		// pid_a is not a valid process group
		sleep(1); // stay alive
		return 0;
	}
	if (!fork()) {
		setpgid(0, pid_a);
		perror("setpgid");
		return 0;
	}
	sleep(1); // stay alive
	return 0;
}

Signed-off-by: Guy Shefy <guyshefyb@gmail.com>
---
 man2/setpgid.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/setpgid.2 b/man2/setpgid.2
index 52c5bd5fc..0b0182eb9 100644
--- a/man2/setpgid.2
+++ b/man2/setpgid.2
@@ -214,6 +214,11 @@ a session leader
 .RB ( setpgid (),
 .BR setpgrp ()).
 .TP
+.B EPERM
+The target process group does not exists.
+.RB ( setpgid (),
+.BR setpgrp ()).
+.TP
 .B ESRCH
 For
 .BR getpgid ():
-- 
2.34.1

On Mon, Feb 20, 2023 at 06:01:48PM +0200, Guy Shefy wrote:
> >From d2da0c74521195f4211bdc25089bbd6b420010c0 Mon Sep 17 00:00:00 2001
> From: Guy Shefy <guyshefyb@gmail.com>
> Date: Mon, 20 Feb 2023 17:54:40 +0200
> Subject: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process group
> 
> found using test program:
> 
> int main() {
> 	pid_t pid_a = fork();
> 	if (!pid_a) {
> 		// pid_a is not a valid process group
> 		sleep(1); // stay alive
> 		return 0;
> 	}
> 	if (!fork()) {
> 		setpgid(0, pid_a);
> 		perror("setpgid");
> 		return 0;
> 	}
> 	sleep(1); // stay alive
> 	return 0;
> }
> 
> Signed-off-by: Guy Shefy <guyshefyb@gmail.com>
> ---
>  man2/setpgid.2 | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/man2/setpgid.2 b/man2/setpgid.2
> index 52c5bd5fc..0b0182eb9 100644
> --- a/man2/setpgid.2
> +++ b/man2/setpgid.2
> @@ -214,6 +214,11 @@ a session leader
>  .RB ( setpgid (),
>  .BR setpgrp ()).
>  .TP
> +.B EPERM
> +The target process group does not exists.
> +.RB ( setpgid (),
> +.BR setpgrp ()).
> +.TP
>  .B ESRCH
>  For
>  .BR getpgid ():
> -- 
> 2.34.1
> 
> On Mon, Feb 20, 2023 at 04:51:53PM +0100, Alex Colomar wrote:
> > Hello Guy,
> > 
> > On 2/20/23 16:50, Guy Shefy wrote:
> > > Signed-off-by: Guy Shefy <guyshefyb@gmail.com>
> > > ---
> > >   man2/setpgid.2 | 5 +++++
> > >   1 file changed, 5 insertions(+)
> > > 
> > > diff --git a/man2/setpgid.2 b/man2/setpgid.2
> > > index 52c5bd5fc..0b0182eb9 100644
> > > --- a/man2/setpgid.2
> > > +++ b/man2/setpgid.2
> > > @@ -214,6 +214,11 @@ a session leader
> > >   .RB ( setpgid (),
> > >   .BR setpgrp ()).
> > >   .TP
> > > +.B EPERM
> > > +The target process group does not exists.
> > > +.RB ( setpgid (),
> > > +.BR setpgrp ()).
> > > +.TP
> > 
> > Could you please document how you found this in the commit message?
> > 
> > Thanks,
> > 
> > Alex
> > 
> > >   .B ESRCH
> > >   For
> > >   .BR getpgid ():
> > 
> > -- 
> > <http://www.alejandro-colomar.es/>
> > GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> > 
> 
> 
> 
