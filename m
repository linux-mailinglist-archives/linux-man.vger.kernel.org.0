Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35FF8788E14
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 19:54:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbjHYRy1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 13:54:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229697AbjHYRyE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 13:54:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50953212B
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 10:54:02 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E3B0164682
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 17:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AED7C433C9;
        Fri, 25 Aug 2023 17:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692986041;
        bh=1MwLVWpbf0ZiTmn4kiV1ouT9ma2qtDWmZhBXJpkuqyI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=l+w3rpbNRznA5TMpiQ39uRVyxM6FcBWTlY9AUrUITCds4EZxMMT8tsxPgSikMJMm5
         PMY+fGh7IarjIDcJEOFTX4KLB79v2+NMUcD20GM//+NDKsRA3BFfeEYNUkS4gk/P1n
         ++MDP2Lr+yN6YdhLW8tLiUubjgv0r3QPOEtulXTdQL52Xr2DncBJZjCWE22iES9B8t
         iIBKN+Gllrkq5p0VrbGY6d2wukfa8AwIgoaR7osziMsD2d/ScQNd5BB1S+ZZXuOu7p
         7HbujFbE/FUOtTvyFdvX5SzG6e5ca6XDsM7AoU/5vbKjrt7x+qYzBBsdRgp/hDGvad
         RXocNi/5/TCpQ==
Message-ID: <d21c8f8f-61a0-9309-f43b-9d88f59e8085@kernel.org>
Date:   Fri, 25 Aug 2023 19:53:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] abort.3: Note that the glibc implementation is not
 async-signal-safe
Content-Language: en-US
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
        Glibc <libc-alpha@sourceware.org>,
        Gabriel Ravier <gabravier@gmail.com>
References: <07404317c21c86c517bc84357f91c4e179542906.1690372376.git.tgolembi@redhat.com>
 <ZOThpIa46irPESgE@cremorrah> <45b86bac-faeb-b39a-6be4-5c5f1c4bdc6e@gmail.com>
 <ZOifYfs4fxIbk-NF@cremorrah>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZOifYfs4fxIbk-NF@cremorrah>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kIzvdwWq8KsSWm8AJj0bE5Nm"
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kIzvdwWq8KsSWm8AJj0bE5Nm
Content-Type: multipart/mixed; boundary="------------H3DjTAJ4d739nRz5Bu3DmQwv";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
 Glibc <libc-alpha@sourceware.org>, Gabriel Ravier <gabravier@gmail.com>
Message-ID: <d21c8f8f-61a0-9309-f43b-9d88f59e8085@kernel.org>
Subject: Re: [PATCH] abort.3: Note that the glibc implementation is not
 async-signal-safe
References: <07404317c21c86c517bc84357f91c4e179542906.1690372376.git.tgolembi@redhat.com>
 <ZOThpIa46irPESgE@cremorrah> <45b86bac-faeb-b39a-6be4-5c5f1c4bdc6e@gmail.com>
 <ZOifYfs4fxIbk-NF@cremorrah>
In-Reply-To: <ZOifYfs4fxIbk-NF@cremorrah>

--------------H3DjTAJ4d739nRz5Bu3DmQwv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom=C3=A1=C5=A1, Gabriel,

On 2023-08-25 14:32, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
> On Thu, Aug 24, 2023 at 11:07:00PM +0100, Gabriel Ravier wrote:
>> On 8/22/23 17:26, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD via Libc-alpha wro=
te:
>>> Hi,
>>>
>>> gentle reminder that this has not received any attention yet.
>> I assume this is because there are currently efforts to make glibc's
>> implementation async-signal-safe - which would make this proposed note=
 quite
>> quickly inaccurate

I was actually waiting to see if anyone from glibc would comment.
As Tom=C3=A1=C5=A1 said, I think this should be added even if glibc makes=
 it
safe in the (near) future.  When that happens, we should move that
to the HISTORY section.

>=20
> I suppose you're referring to this:=20
>=20
> https://inbox.sourceware.org/libc-alpha/20230803173436.4146900-1-adheme=
rval.zanella@linaro.org/
>=20
> I was not aware of that. Thanks for bringing that to my attention.
>=20
>> (though the fact it has been async-signal-unsafe until
>> now still seems notable enough to be mentioned here).
>=20
> Yes, even when this is fixed having a BUGS section with something like
> "In glibc X.Y.Z and earlier the function was not AS-safe.", might be a
> good idea.
>=20
>     Tomas

Agree.  As no-one from glibc commented, I'll take that as an implicit ack=
=2E

>=20
>>>
>>> Thanks,
>>>
>>>      Tomas
>>>
>>> On Wed, Jul 26, 2023 at 01:55:27PM +0200, Tom=C3=A1=C5=A1 Golembiovsk=
=C3=BD wrote:
>>>> See https://sourceware.org/bugzilla/show_bug.cgi?id=3D26275
>>>>
>>>> Cc: Carlos O'Donell <carlos@redhat.com>
>>>> Cc: Glibc <libc-alpha@sourceware.org>
>>>> Signed-off-by: Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.co=
m>
>>>> ---
>>>>   man3/abort.3         | 6 ++++++
>>>>   man7/signal-safety.7 | 5 +++++
>>>>   2 files changed, 11 insertions(+)
>>>>
>>>> diff --git a/man3/abort.3 b/man3/abort.3
>>>> index 0b57e10ed..827d5c9db 100644
>>>> --- a/man3/abort.3
>>>> +++ b/man3/abort.3
>>>> @@ -85,6 +85,12 @@ terminates the process without flushing streams.
>>>>   POSIX.1 permits either possible behavior, saying that
>>>>   .BR abort ()
>>>>   "may include an attempt to effect fclose() on all open streams".
>>>> +.SH BUGS
>>>> +The glibc implementation of
>>>> +.BR abort ()
>>>> +is not async-signal-safe,
>>>> +.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=3D26275=


What's that '.' for?

>>>> +in violation of the requirements of POSIX.1.

It seems to also be in violation of ISO C, per what the glibc bug claims.=


Please also include the links to POSIX.1 and ISO C that confirm this.

Cheers,
Alex

>>>>   .SH SEE ALSO
>>>>   .BR gdb (1),
>>>>   .BR sigaction (2),
>>>> diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
>>>> index 3d6ddc7eb..431a22f89 100644
>>>> --- a/man7/signal-safety.7
>>>> +++ b/man7/signal-safety.7
>>>> @@ -335,6 +335,11 @@ The glibc implementation of
>>>>   is not async-signal-safe because it uses
>>>>   .BR pthread_mutex_lock (3)
>>>>   internally.
>>>> +.IP \[bu]
>>>> +.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=3D26275=

>>>> +The glibc implementation of
>>>> +.BR abort (3)
>>>> +is not async-signal-safe.
>>>>   .SH SEE ALSO
>>>>   .BR sigaction (2),
>>>>   .BR signal (7),
>>>> --=20
>>>> 2.41.0
>>>>
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------H3DjTAJ4d739nRz5Bu3DmQwv--

--------------kIzvdwWq8KsSWm8AJj0bE5Nm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTo6rYACgkQnowa+77/
2zK1XQ//b73j1YGPcbb5y10i9IAWLTRj9LfTx3OjfhE/Ghm+91eOLyAY8B6tZlGv
CjUT5ueioy7/0dDmOvXThr/QT+EVrhhORQyD4kt+D8dSL2QXxB9621KNIZRbpOmy
cfZ0v8q5BxJUuNWQd0pZnIZBxwuQ12CrECdcmnT8z5NfrGZOJK/y/SeL2IG+7CzW
mDyOqBXrf70B2GSGZBnzZf/CDeM9opF5LYnHIQDKgT2s54KUBNn+BqZy/HnQAV7m
pmFL5GMqkCqAJxkr8FXx/ftcF/JN/02s2g/euDnWy3RQMFHYGKqT3CpBAbERVzot
oStQiUq6ieJVWFX/nnQXnrBTJWLmmpMS76Zo8UyPMYzVIuVF88eKywVzy238HNA1
N6LBj3Od/n3L6c5PT7SDtIB07ZZwYNJZdTxG7KqQUoXjgv0kkcKU9Vk//gVIEQfw
qTCY9V3AIWi3puPIR6bT0aE4EHdrdI2PEiPQX9C2aAx7NFaOTb7eJCy6+PxQgTuX
pgOljZT989q4R9LexW8gcT3vo1fGFOdgSeh8YoJ8OQnpxdfGLfTWs8BXCXCz6e7x
HNmE9tzCyXxNiIPynh8h6m3z7z5iBtS9jeMTfaCsHzeZaG72K7DIMwsW1vzJcMv8
Fqdn27Wc8U4Pbuu/Cl7QrNZnmyrlTvTtm0qhod8JfbLrNbHUPm8=
=xqDl
-----END PGP SIGNATURE-----

--------------kIzvdwWq8KsSWm8AJj0bE5Nm--
