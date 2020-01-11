Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 844BE1381F2
	for <lists+linux-man@lfdr.de>; Sat, 11 Jan 2020 16:10:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729852AbgAKPKv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Jan 2020 10:10:51 -0500
Received: from forward501p.mail.yandex.net ([77.88.28.111]:44105 "EHLO
        forward501p.mail.yandex.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729839AbgAKPKv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Jan 2020 10:10:51 -0500
X-Greylist: delayed 343 seconds by postgrey-1.27 at vger.kernel.org; Sat, 11 Jan 2020 10:10:50 EST
Received: from mxback4g.mail.yandex.net (mxback4g.mail.yandex.net [IPv6:2a02:6b8:0:1472:2741:0:8b7:165])
        by forward501p.mail.yandex.net (Yandex) with ESMTP id F34333500468
        for <linux-man@vger.kernel.org>; Sat, 11 Jan 2020 18:05:36 +0300 (MSK)
Received: from localhost (localhost [::1])
        by mxback4g.mail.yandex.net (mxback/Yandex) with ESMTP id YaSVxxW1ks-5aaSLWPc;
        Sat, 11 Jan 2020 18:05:36 +0300
Received: by sas1-30406100349c.qloud-c.yandex.net with HTTP;
        Sat, 11 Jan 2020 18:05:36 +0300
From:   Shawn Landden <shawn@git.icu>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
In-Reply-To: <20200111150216.5956-1-shawn@git.icu>
References: <20200111150216.5956-1-shawn@git.icu>
Subject: Re: [PATCH] memcmp.3: note about optimization to bcmp in LLVM 9
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date:   Sat, 11 Jan 2020 10:05:36 -0500
Message-Id: <20698651578755136@sas1-30406100349c.qloud-c.yandex.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


11.01.2020, 10:02, "Shawn Landden" <shawn@git.icu>:
> ---
>  man3/memcmp.3 | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/man3/memcmp.3 b/man3/memcmp.3
> index 247eed223..6afca5ea4 100644
> --- a/man3/memcmp.3
> +++ b/man3/memcmp.3
> @@ -84,10 +84,17 @@ because the required CPU time depends on the number of equal bytes.
>  Instead, a function that performs comparisons in constant time is required.
>  Some operating systems provide such a function (e.g., NetBSD's
>  .BR consttime_memequal ()),
>  but no such function is specified in POSIX.
>  On Linux, it may be necessary to implement such a function oneself.
> +.PP
> +LLVM 9, released in 2019, and later will optimize a call
to
> +.BR memcmp ()
> +to a call to
> +.BR bcmp (3)
> +if the return value is only checked for equilivence to zero.
> +.\" http://releases.llvm.org/9.0.0/docs/ReleaseNotes.html#noteworthy-optimizations
>  .SH SEE ALSO
>  .BR bcmp (3),
>  .BR bstring (3),
>  .BR strcasecmp (3),
>  .BR strcmp (3),
> --
> 2.20.1

-- 
Shawn Landden

