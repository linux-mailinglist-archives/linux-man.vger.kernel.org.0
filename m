Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B3A269D107
	for <lists+linux-man@lfdr.de>; Mon, 20 Feb 2023 17:01:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230122AbjBTQBz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Feb 2023 11:01:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbjBTQBy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Feb 2023 11:01:54 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7F431C7F5
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 08:01:52 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id n31so1212680wms.2
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 08:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vBVHaxfVHsgbCwIAPulH+e7R7RCDHAYZtPAiUIuQ+js=;
        b=KVVp2B3X1Phw1+BPS9PNKiPlaboZS0CwVn4izyP/X0tZ45bpS3V12zA2fqk/70MB0e
         ++2S8FXRqPPSR7wjN2OMnHYoufaI/yS19PEtPdtizkp4z/Qk3cC5v2V/HLWDoxw8mIf9
         XjGhbgb9wqb++jZoxEuDvGkj/m1yDN8cNHIBufgOOUxIEyq6APZOY0QOebJnC7Kve4yJ
         w/8zuWRNF1S+OJY6YSrboXFS8HzZdrQ8tDipoGpHilWpejxZrsyiEqRQLFcB0w4cAGE1
         sG0Eq0tSpkhqwvE5SMXVcr1FhJKfzy3XaS/UUZYkDwyEQe0K84e/dRZYZ0M8ZIjZbU4C
         OhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vBVHaxfVHsgbCwIAPulH+e7R7RCDHAYZtPAiUIuQ+js=;
        b=P1cGkF1B8GjIe0iech+2aIpEGFIbIa2k7PFavECliHX1SfmqQqX8yfqZQDN8ye+Xy3
         V/sTfVvI2xuuhzCZ4Gv8upF9HpfYPAeQM0YyDqlTDZB87L/v7xJRbm0ewPZ8Co++Tofh
         bEWPxiYAPtV9BF8rUGEUtNcq8nhRPeXmNSvqwqZiSomUhgvrvU8jtXZly0Wx7rzgMNKp
         Tl9xvq98MjNp7J3ldE5f8oc2jmV0CqtcQIfJrS2sPi4PZJlIOz6HLbr+TtNitzu23nlL
         iF34eRDw0RE2bQEkxeh+vTY7n47btWI/Cz99ORZmW+xZHfc2vBWq6HINIh5o9Y7wSPXb
         Sswg==
X-Gm-Message-State: AO0yUKVfZxESjgjzwfnaaESr5rsSRWo8n/4oVcCK4PtCNf0yrPjdl+cA
        RVggWpXcIdQPXoe889oFh9I=
X-Google-Smtp-Source: AK7set+JR/TRHOk2BmfF82Hf6sQeENIE3RLvlNjPBDvIB4VeL6Yuxh9QZc14q9I4KqoWVPSP0iWvBg==
X-Received: by 2002:a05:600c:747:b0:3dc:5a13:c7d1 with SMTP id j7-20020a05600c074700b003dc5a13c7d1mr8843998wmn.16.1676908911275;
        Mon, 20 Feb 2023 08:01:51 -0800 (PST)
Received: from T14s-004530 ([185.213.253.252])
        by smtp.gmail.com with ESMTPSA id r5-20020a1c2b05000000b003ddf2865aeasm1549740wmr.41.2023.02.20.08.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 08:01:50 -0800 (PST)
Date:   Mon, 20 Feb 2023 18:01:48 +0200
From:   Guy Shefy <guyshefyb@gmail.com>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process
 group
Message-ID: <Y/OZbDq9AGoFI0iE@T14s-004530>
References: <Y/OWxEajSbwD8UsL@T14s-004530>
 <d50e6acf-bf10-f72d-b04b-e0fe8b2d1f20@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d50e6acf-bf10-f72d-b04b-e0fe8b2d1f20@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From d2da0c74521195f4211bdc25089bbd6b420010c0 Mon Sep 17 00:00:00 2001
From: Guy Shefy <guyshefyb@gmail.com>
Date: Mon, 20 Feb 2023 17:54:40 +0200
Subject: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process group

found using test program:

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

On Mon, Feb 20, 2023 at 04:51:53PM +0100, Alex Colomar wrote:
> Hello Guy,
> 
> On 2/20/23 16:50, Guy Shefy wrote:
> > Signed-off-by: Guy Shefy <guyshefyb@gmail.com>
> > ---
> >   man2/setpgid.2 | 5 +++++
> >   1 file changed, 5 insertions(+)
> > 
> > diff --git a/man2/setpgid.2 b/man2/setpgid.2
> > index 52c5bd5fc..0b0182eb9 100644
> > --- a/man2/setpgid.2
> > +++ b/man2/setpgid.2
> > @@ -214,6 +214,11 @@ a session leader
> >   .RB ( setpgid (),
> >   .BR setpgrp ()).
> >   .TP
> > +.B EPERM
> > +The target process group does not exists.
> > +.RB ( setpgid (),
> > +.BR setpgrp ()).
> > +.TP
> 
> Could you please document how you found this in the commit message?
> 
> Thanks,
> 
> Alex
> 
> >   .B ESRCH
> >   For
> >   .BR getpgid ():
> 
> -- 
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> 



