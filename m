Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C17196473CE
	for <lists+linux-man@lfdr.de>; Thu,  8 Dec 2022 17:02:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbiLHQCO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Dec 2022 11:02:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229861AbiLHQCM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Dec 2022 11:02:12 -0500
X-Greylist: delayed 1274 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 08 Dec 2022 08:02:11 PST
Received: from mail.smrk.net (mail.smrk.net [IPv6:2001:19f0:6c01:2788:5400:4ff:fe27:adaa])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23D9F98E92
        for <linux-man@vger.kernel.org>; Thu,  8 Dec 2022 08:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
        t=1670513654;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=0g2+U0YLQNNhMLCz3390mh/KF1xhXrOHnGkqzwssXqw=;
        b=Pp83J02FA5ZG/yNOuUNhVxi5kUc/o0MOAWqj7/sEG7P01qggUuFv2cyno/CcXVsu8ch+Cu
        R5L9lAngYYF97va4gcCJbDpNJtqRzhiHYcM2xFnripjl+tk7RrlLEoUdMTNruhLn0CUdvA
        PstYIAhvEYuMM+N8eWJxK/ZUHSq32w7Ag3CIBV4VlaZeXaukkqvVYfeF/XPlwxSe5NIg/X
        oiwhNpjV7EB81LZYnIpbvg9iGwlRqGY2Fqu+B6Kmij0JPD6P2Y9NIT27B64TWufcdd+/WO
        NjXTCiO94CkoxCvJM1+tNdPcpmSJo1roEaqfrzWGsQOQf4Wq/ubzfgvNSLsRNA==
Received: from localhost (<unknown> [192.168.5.2])
        by smrk.net (OpenSMTPD) with ESMTPSA id 1de81c08 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Thu, 8 Dec 2022 16:34:13 +0100 (CET)
From:   =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
To:     Mike Frysinger <vapier@gentoo.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
In-Reply-To: <20221208091442.10595-1-vapier@gentoo.org> (Mike Frysinger's
        message of "Thu, 8 Dec 2022 04:14:42 -0500")
References: <20221208091442.10595-1-vapier@gentoo.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/29.0.50 (gnu/linux)
Date:   Thu, 08 Dec 2022 16:34:13 +0100
Message-ID: <20221208163413+0100.348521-stepnem@smrk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu,  8 Dec 2022 04:14:42 -0500
Mike Frysinger wrote:

> @@ -106,15 +107,15 @@ calls fail, or if the function cannot allocate memo=
ry,
>  NULL is returned.
>  .PP
>  .BR pclose ():
> -on success, returns the exit status of the command; if
> +on success, returns the exit status of the command; if one of the
>  .\" These conditions actually give undefined results, so I commented
>  .\" them out.
>  .\" .I stream
>  .\" is not associated with a "popen()ed" command, if
>  .\".I stream
>  .\" already "pclose()d", or if
> -.BR wait4 (2)
> -returns an error, or some other error is detected,
> +.BR wait (2)
> +family of calls returns an error, or some other error is detected,
>  \-1 is returned.
>  .PP
>  On failure, both functions set

I'll just point out that, if this goes in, putting "one of the" _after_
the comment would prevent rendering it incomprehensible.

Thanks,

  =C5=A0t=C4=9Bp=C3=A1n
