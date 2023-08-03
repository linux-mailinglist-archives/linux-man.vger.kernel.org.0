Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94E0276EA07
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 15:24:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236038AbjHCNYH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 09:24:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236176AbjHCNXu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 09:23:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91390272A
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 06:23:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 25F0961D9A
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 13:23:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B95AC433C8;
        Thu,  3 Aug 2023 13:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691069026;
        bh=6NVAxfkc4OCLfOlTe7xyqCtLZ+qzVjvlXmA1yAqZqZc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=PmOSYtiwUnVc4c29ba5TBkfZRzzxBi7cf96ruFfFbQ+9MOu6ur6RAhRGT8U1j7Z0k
         3nYCXxElDgX3qtJnaIBeg5joge24R3l2Y/8hs+0+W7xohzvujopqadzCyydpd4vAGj
         WKDMAO/2uFdOrHyMvdUNxj0npLTsp5TkBA9/bjJjNTUV1da8TlJjSQfoyqZzjyAWH+
         2ftY/pROiHEFZ80W45Mo69j64rtUXbDYy1ObJF5raJ4bVBqQpzgyVHieKxQrm9XBJW
         uSjBJ+tQ0cj4/+aQIUr9wmTUY9pC6E2CQsm7CIJ7uk1zL6E6xcDEgTcEENh2x6XBz7
         j7Adb8uHe8JnA==
Message-ID: <bcd6cfc1-a306-2261-feb6-55936d8cfd05@kernel.org>
Date:   Thu, 3 Aug 2023 15:23:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: Copyright for erofs.5
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
 <ups5demx3inur4cudbh44smelpfmsuc2j7alegk2jjcavoyhnd@4rkmms4ugjcf>
 <bb64eb67-293d-f294-ef56-355c8118caca@kernel.org>
 <5fa46ghw63mmhbc3go4pvgn2stcetko65lire6gm4exbxklmyu@qituembq5efj>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <5fa46ghw63mmhbc3go4pvgn2stcetko65lire6gm4exbxklmyu@qituembq5efj>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ODZkkuj0auq2PGYFzSCK1I2H"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ODZkkuj0auq2PGYFzSCK1I2H
Content-Type: multipart/mixed; boundary="------------IRQwatb810Te5qZEyokp0T8Y";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <bcd6cfc1-a306-2261-feb6-55936d8cfd05@kernel.org>
Subject: Re: Copyright for erofs.5
References: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
 <ups5demx3inur4cudbh44smelpfmsuc2j7alegk2jjcavoyhnd@4rkmms4ugjcf>
 <bb64eb67-293d-f294-ef56-355c8118caca@kernel.org>
 <5fa46ghw63mmhbc3go4pvgn2stcetko65lire6gm4exbxklmyu@qituembq5efj>
In-Reply-To: <5fa46ghw63mmhbc3go4pvgn2stcetko65lire6gm4exbxklmyu@qituembq5efj>

--------------IRQwatb810Te5qZEyokp0T8Y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-03 13:42, =D0=BD=D0=B0=D0=B1 wrote:
> On Thu, Aug 03, 2023 at 12:34:44PM +0200, Alejandro Colomar wrote:
>> On 2023-08-03 03:44, =D0=BD=D0=B0=D0=B1 wrote:
>>> On Thu, Aug 03, 2023 at 02:06:08AM +0200, Alejandro Colomar wrote:
>>>> I'm packaging manpages 6.05.01 for Debian, and while updating the
>>>> d/copyright file, I noticed some glitch.  You attributed erofs.5 to
>>>> mtk.
>>> I copied it from another file (probably tmpfs.5) then edited it,
>>> so I left the header as-is.
>>>
>>>> I guess that was a copy&paste error, isn't it?
>>> Above my pay-grade to categorise this,
>>> or to touch the header on a file I copied.
>> Yeah, but you could have appended yourself.  I bet you wrote something=

>> that deserves a copyright, didn't you?  =3D)
> Never. I'm an avid IP hater and much more so when it means stuffing
> brands into headers. I'd release it into the public domain if I could.

Ok.

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------IRQwatb810Te5qZEyokp0T8Y--

--------------ODZkkuj0auq2PGYFzSCK1I2H
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTLqmAACgkQnowa+77/
2zIzhg//Vxcsnsd7pLgOZgLGp01rLt9UWiV99KuTz7TdhnCU0jW3K14clm3MZy08
NemIO3MJcu+cEVv74t4ayZEZ7p/MMbyvl6GZeLdD8TB/ZHlM/OFOKJgzDhuinpKS
57hW5uT2L/z4wMyRuDIdUSJl5QsQ4IoOggnYJjsijYFvRF8rI2tBvodoYREhPhXJ
4I5UQDhhSS0hw6ZGCIRbtwx5Gp8sC26ESMyLLrpgAoV9EWlGC0l0A7TD4DTb8BIu
P1apU2m+Ixi6mtu+b5JM8Ws1S4tqoMfTykeYwPZsjJ/P9rqKDo7MtA59KT9mxfHQ
6QZEqeJR/jtB5HRG83gLQB8Csq+36QLPbaOqmmZEC0xkH1ztmtyQ8DL6KnwOv4C3
WCndRK0yKBIdt67yhmCk8M1E37bpOCp+bTHkHrQNJJQOCh7DpD1xiF9/333dZyiY
au1y8prsiIk5elf2nG6F+OXdFbZ/RXC0F03f0dpWk4s2krd+rqQyYlucGgIU9HKX
DLnkT1LF2sC9vf+J72gg+Wulz5PAcFCcKHZzup1L3mz6r/j9fGGpvLf1tghQ/RLI
LZtVh6Eek+EHQMt8c5YV6KINtKlxvkC5Ae0ocyHVNfvnM5ERJjLMcceBr3aj+8o8
HIHtZRGtYtw9qI8xxeFV9mqNMTY9Zpfd53ofSSqGdYQD4j8mx1A=
=qOHa
-----END PGP SIGNATURE-----

--------------ODZkkuj0auq2PGYFzSCK1I2H--
