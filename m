Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88A95479C96
	for <lists+linux-man@lfdr.de>; Sat, 18 Dec 2021 21:35:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234130AbhLRUfR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Dec 2021 15:35:17 -0500
Received: from sudo.ws ([65.102.237.118]:50829 "EHLO sudo.ws"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230130AbhLRUfR (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 18 Dec 2021 15:35:17 -0500
X-Greylist: delayed 400 seconds by postgrey-1.27 at vger.kernel.org; Sat, 18 Dec 2021 15:35:17 EST
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sudo.ws; s=selector2;
        t=1639859316; h=from:from:reply-to:subject:subject:date:date:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=6HV2vijY7sS4GuaIQjykxs9Jq7up6Q1XlzjwItSnw34=;
        b=KO+bo/u+5UShLWvHxjls1+iNoWtLaZ/oyvHliVZSxri9ri9QdCy1LkUsf6zA+Yvayww2jm
        +o7/U8Y2aQ3Si5V3FXJMUUIIXyAPpM9IuOAAWbQU89h1KqIIefLWtfYjObozoJZaYSCC4f
        1Lug45zM8x5UxCl/qWNDcePX6+aCdCm1FyuSwce2LLdHToC+Ti+C0F7x/ACAUsKDxwpMms
        YCND+WNf65MqJwOtAqGMDpR22fWa0Uuq7oBOqY15T8AagKE7ND5uiwwRO1Ic7DjGIvQZCa
        szX/6ebIwTtWmA5mBhZQgs1FJdF6qDggRUuZ77FWv+FD/EEzpwROvOas+xq4wA==
Received: from xerxes.sudo.ws (localhost.sudo.ws [127.0.0.1])
        by sudo.ws (OpenSMTPD) with ESMTP id 3daf61be;
        Sat, 18 Dec 2021 13:28:36 -0700 (MST)
From:   "Todd C. Miller" <Todd.Miller@sudo.ws>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: access(2): document EPERM error value
In-reply-to: Your message of "Sat, 18 Dec 2021 19:49:51 +0100."
             <ab5627e1-b45c-3972-97fd-8c2b74a7ca85@gmail.com>
References: <2f39442130f5717a@sudo.ws> <ab5627e1-b45c-3972-97fd-8c2b74a7ca85@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <91841.1639859316.1@xerxes.sudo.ws>
Date:   Sat, 18 Dec 2021 13:28:36 -0700
Message-ID: <e34dd00bfc57fad6@sudo.ws>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Looks good, thanks!

 - todd
