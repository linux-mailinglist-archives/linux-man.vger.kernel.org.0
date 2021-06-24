Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD6DC3B3809
	for <lists+linux-man@lfdr.de>; Thu, 24 Jun 2021 22:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232029AbhFXUoa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Jun 2021 16:44:30 -0400
Received: from mout.gmx.net ([212.227.17.20]:49067 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229525AbhFXUo3 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 24 Jun 2021 16:44:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1624567328;
        bh=q1CyCJkYhnrPLoTMEgrImVlYYUD9s+hi27wLks4S21Q=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
        b=d8JNaKc6x/ScgLJfZ8LL+W6PbMb9ditiiH4IrVRUfnNe0HcXj3DmRxfYpCfO3A19k
         mVBJVExM2yBUHphlHPqQXh2ji1oEzbYVk7R0WGB+AtVjmsIOxQ1ZPnermXyVr4qD5o
         mQOEN7CxACGepqiwpuIz5gntdDmipAjX5CTlVNV8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.9.70.237] ([87.9.70.237]) by web-mail.gmx.net
 (3c-app-mailcom-bs07.server.lan [172.19.170.175]) (via HTTP); Thu, 24 Jun
 2021 22:42:08 +0200
MIME-Version: 1.0
Message-ID: <trinity-131cbf9a-6570-4d3c-8b80-a808d1ad445a-1624567328724@3c-app-mailcom-bs07>
From:   Nora Platiel <nplatiel@gmx.us>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: execve(2) man page: "absolute pathname" inconsistency
Content-Type: text/plain; charset=UTF-8
Date:   Thu, 24 Jun 2021 22:42:08 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:M+jESq2Wtd5ev98wYCbE4Unen13mWkUd4pu6eIz9TIwImpcVrKfiqW8WA/GBtQD8QU7b1
 oNxZlBK3QRIo8F8jksnMiaKTwX/hcauwj0L6R9BT9SPxj5krzMRzjlNOeWrp+3lPDZzKqO5lIqYA
 swTfV4mavjDhDEv/Np+YWZG01gmKwIRsOTEBSDaSscjn905XNvyoeVVy/rADQaoqNONF6tO2rGaC
 aYZs0YucavxhaqliIdRDDbadMjOoPRfHyqO+LvabqSO1L8zJUShbnTwRGZB5lNm4w1z0COOf4REu
 cs=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SIs1V5Vp0PQ=:Uxkp6j9p1CHjRAb2zQCfbL
 szlkYGGdCFltB4IvLFk05kLqKJU71Ej8LL6KnrZC8sKpax5+k5S4TxKStqmAkdyBRV+PsX++b
 8fHpcHqWkpRtOfrCHDqB5rRjFJsPRL5V1u21GV/nbKHHHFylYIxZkzR8SaRDL0M01ILMZTuuJ
 smZpv1MVj27wM0Rv3rPtCbb9N50UCsnFROkssI8ogmImlX4TwuGPqxS/00ScIvtN67f33Kv3p
 H7vnk55au6s+n4Y6CwVL16/z090pDFSK9tVTpM7IFAOC6g0EjPU5ZU06nlWCW7CVg84JzjirI
 GdOAxBqGWVWQrltyOr8g2V5z1BisxcdipYW/5gosGBu0YCRmO8qLTCkIw62hCX/QlqTgdiCZT
 N08cJrgGPIpw7OEDRuI26YB+OxmJhCSgwkLcFeibpFnqCvpFpIZ/JbahUvi1IlUjuy3h1gP2+
 brtx8F+rbeMFIV7VTZ993rQSDP5dst/LvogibRrkCvO0Jcw4AjuYWg7vI1ncGjL4ZSxAZ35Ap
 DvH8JrMzwH7Wm2V/2OMlbakmptsHbZH3fGXkXe3dWPeCLZpEX6BCBk3MyCgYX5OUoY+Gy6JwH
 2795Oe8QxvdOvMhoyS2fBcl8792yJ6XESNGKjko3hdx/GBdAmm4DjnPwsHuxDDijMtAF4IL8S
 l+CATXOFPUdvrZRkVxsWJL4g8k6NrCm/fF1etxQ/4iqd1Wa1pLuxQefu7l5+2wTB/vZhHl2IW
 KN96mwhkthbMnraiW9cxzZfXGGvuZTtawj6l6I/460tFNJoS9HD2EuZfVYIUqQ+lYA2Qi/blL
 IHfdSu5jMp3JF878EYoYzoaOPD6ww==
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,
I'm reporting a problem with the execve(2) man page (see the "absolute pat=
hname" part):

> If the pathname argument of execve() specifies an interpreter
> script, then interpreter will be invoked with the following
> arguments:
>
>     interpreter [optional-arg] pathname arg...
>
> where pathname is the absolute pathname of the file specified as
>                       ^^^^^^^^^^^^^^^^^
> the first argument of execve(), and arg...  is the series of
> words pointed to by the argv argument of execve(), starting at
> argv[1].  Note that there is no way to get the argv[0] that was
> passed to the execve() call.

Then in the final example:

> $ ./execve ./script
> argv[0]: ./myecho
> argv[1]: script-arg
> argv[2]: ./script
> argv[3]: hello
> argv[4]: world

According to the description, argv[2] is supposed to be the *absolute path=
name* of "./script" but it is not.
(In path_resolution(7), an absolute pathname is defined to be a pathname s=
tarting with a '/' character.)

I tested the example with kernel 4.4.246 and the output is the same as the=
 one in the man page (relative paths are preserved).
I don't know about newer kernels, but if I understand correctly, either th=
e "absolute pathname" wording is incorrect or the example is.
(In the latter case, perhaps the man page could also mention the change in=
 behavior.)

The "absolute pathname" wording was introduced here:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D6=
0f16bf2fe6bd2d2d001d0a41936e778b1e7e3f6
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D6=
3059c4b527d0da73666da5ff29dcc902e219371

Regards,
NP

