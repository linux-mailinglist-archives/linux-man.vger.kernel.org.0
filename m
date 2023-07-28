Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E7637675E2
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 20:55:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234439AbjG1Sz6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 14:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231370AbjG1Sz6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 14:55:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5D0E136
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 11:55:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3F79D621CF
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 18:55:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEEFAC433C8;
        Fri, 28 Jul 2023 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690570555;
        bh=A2JPuUE4xLKpMMieSsldNr0JiFQuZrW/L9SJ9QIOw1E=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=HW4gzmWlCffFNIpmNCg0iHOw7mCHYIkpPM1FEQyq3WPpfkyIDWtsQzNezeeVPXnmF
         311GnueN0fNqRdZ3ORwAYKtbOPBgmgdg02PiVgNckLnWciAwXwblraRqijc47icnBa
         NO929qmfJmHTgKVVItx8d5i+KDANWxP6tS7bjRGDTKwqC9yYBOnYU+1Fh6tY9FUTXD
         INOEsXyo69ACHcrbYMFMogeWEwZj5kkeT/FTuH4hmkLcNA1S6+pLEAf6M0uPAHKW41
         1FfT6jg52KgozRcylhWzBV9YkJyF89aNv6NH4CaeUgnv7NVQIZPogLz0w8DGCGnh1a
         /0oWLPH0NO11A==
Message-ID: <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
Date:   Fri, 28 Jul 2023 20:55:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to
 MT-Safe
To:     Shani Leviim <sleviim@redhat.com>,
        Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org, automotive-devel@redhat.com,
        Carlos O'Donell <carlos@redhat.com>,
        Sergei Gromeniuk <sgromeni@redhat.com>,
        Gobinda Das <godas@redhat.com>
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
 <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lq0t1ks0c1Bcz0azs2S6a0wq"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------lq0t1ks0c1Bcz0azs2S6a0wq
Content-Type: multipart/mixed; boundary="------------nVy1EuztzEoKviEW08bDuYkR";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Shani Leviim <sleviim@redhat.com>, Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, automotive-devel@redhat.com,
 Carlos O'Donell <carlos@redhat.com>, Sergei Gromeniuk <sgromeni@redhat.com>,
 Gobinda Das <godas@redhat.com>
Message-ID: <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to
 MT-Safe
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
 <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
In-Reply-To: <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>

--------------nVy1EuztzEoKviEW08bDuYkR
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Shani, Florian,

On 2023-07-16 19:28, Shani Leviim wrote:
> Hi all,
> My previous patch wasn't aligned with the master branch.
> Here's the updated patch (compared to master):

Thanks for the patch.

Florian, do you have any comments about this patch?

>=20
> diff --git a/man3/strerror.3 b/man3/strerror.3
> index 862e153ee..6a3d83164 100644
> --- a/man3/strerror.3
> +++ b/man3/strerror.3
> @@ -71,11 +71,12 @@ part of the current locale to select the
> appropriate language.
>  is
>  .BR EINVAL ,
>  the returned description will be "Invalid argument".)
> -This string must not be modified by the application, but may be
> -modified by a subsequent call to
> +This string must not be modified by the application,
> +and the returned pointer will be invalidated on a subsequent call to
>  .BR strerror ()
>  or
> -.BR strerror_l ().
> +.BR strerror_l (),
> +or if the thread that obtained the string exits.
>  No other library function, including
>  .BR perror (3),
>  will modify this string.
> @@ -100,12 +101,12 @@ For example, given
>  as an argument, this function returns a pointer to the string "EPERM".=

>  .\"
>  .SS strerror_r()
> -The
>  .BR strerror_r ()
> -function is similar to
> +is like
>  .BR strerror (),
> -but is
> -thread safe.
> +but might use the supplied buffer
> +.I buf
> +instead of allocating one internally.
>  This function is available in two versions:
>  an XSI-compliant version specified in POSIX.1-2001
>  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.13=
),
> @@ -238,7 +239,7 @@ Interface   Attribute       Value
>  T{
>  .BR strerror ()
>  T}     Thread safety   T{
> -MT-Unsafe race:strerror
> +MT-Safe
>  T}
>  T{
>  .BR strerrorname_np (),
> @@ -249,6 +250,10 @@ T{
>  .BR strerror_l ()
>  T}     Thread safety   MT-Safe
>  .TE
> +.PP
> +Before glibc 2.32,
> +.BR strerror ()
> +is not MT-Safe.
>  .hy
>  .ad
>  .sp 1
> @@ -292,13 +297,6 @@ to
>  if the error number is unknown.
>  C99 and POSIX.1-2008 require the return value to be non-NULL.
>  .SH NOTES
> -The GNU C Library uses a buffer of 1024 characters for
> -.BR strerror ().
> -This buffer size therefore should be sufficient to avoid an
> -.B ERANGE
> -error when calling
> -.BR strerror_r ().
> -.PP
>  .BR strerrorname_np ()
>  and
>  .BR strerrordesc_np ()
> @@ -309,4 +307,5 @@ are thread-safe and async-signal-safe.
>  .BR error (3),
>  .BR perror (3),
>  .BR strsignal (3),
> -.BR locale (7)
> +.BR locale (7),
> +.BR signal-safety (7)
>=20
>=20
> Signed-off-by: Shani Leviim <sleviim@redhat.com>

Can you please include that information in the commit message itself?
I suggest using git-format-patch(1) + git-send-email(1) to send the patch=
=2E
If git-send-email(1) is not an option for you, then I suggest adding a
copy of the patch as an attachment (but keep the inline copy please).

Check the ./CONTRIBUTING file.

Cheers,
Alex

>=20
> Regards,
> Shani Leviim
>=20
> On Thu, Jul 13, 2023 at 2:15=E2=80=AFPM Shani Leviim <sleviim@redhat.co=
m> wrote:
>>
>> Thanks, Florian, for reviewing,
>> My original mail wasn't text plained, sorry for that.
>>
>> The information in my patch was obtained from a glibc upstream patch,
>> commit ID 28aff047818eb1726394296d27b9c7885340bead
>> Following the patch above, for glibc versions >=3D2.32, strerror() is
>> considered MT-Safe, and the man page should be changed accordingly.
>>
>> diff --git a/man3/strerror.3 b/man3/strerror.3
>> index 72b4d3994..31818e4ae 100644
>> --- a/man3/strerror.3
>> +++ b/man3/strerror.3
>> @@ -91,11 +91,12 @@ part of the current locale to select the
>> appropriate language.
>>  is
>>  .BR EINVAL ,
>>  the returned description will be "Invalid argument".)
>> -This string must not be modified by the application, but may be
>> -modified by a subsequent call to
>> +This string must not be modified by the application,
>> +and the returned pointer will be invalidated on a subsequent call to
>>  .BR strerror ()
>>  or
>> -.BR strerror_l ().
>> +.BR strerror_l (),
>> +or if the thread that obtained the string exits.
>>  No other library function, including
>>  .BR perror (3),
>>  will modify this string.
>> @@ -120,12 +121,12 @@ For example, given
>>  as an argument, this function returns a pointer to the string "EPERM"=
=2E
>>  .\"
>>  .SS strerror_r()
>> -The
>>  .BR strerror_r ()
>> -function is similar to
>> +is like
>>  .BR strerror (),
>> -but is
>> -thread safe.
>> +but might use the supplied buffer
>> +.I buf
>> +instead of allocating one internally.
>>  This function is available in two versions:
>>  an XSI-compliant version specified in POSIX.1-2001
>>  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.1=
3),
>> @@ -249,7 +250,7 @@ l l l.
>>  Interface      Attribute       Value
>>  T{
>>  .BR strerror ()
>> -T}     Thread safety   MT-Unsafe race:strerror
>> +T}     Thread safety   MT-Safe
>>  T{
>>  .BR strerrorname_np (),
>>  .BR strerrordesc_np ()
>> @@ -260,6 +261,10 @@ T{
>>  .BR strerror_l ()
>>  T}     Thread safety   MT-Safe
>>  .TE
>> +.PP
>> +Before glibc 2.32,
>> +.BR strerror ()
>> +is not MT-Safe.
>>  .SH CONFORMING TO
>>  .BR strerror ()
>>  is specified by POSIX.1-2001, POSIX.1-2008, C89, and C99.
>> @@ -300,13 +305,6 @@ to
>>  if the error number is unknown.
>>  C99 and POSIX.1-2008 require the return value to be non-NULL.
>>  .SH NOTES
>> -The GNU C Library uses a buffer of 1024 characters for
>> -.BR strerror ().
>> -This buffer size therefore should be sufficient to avoid an
>> -.B ERANGE
>> -error when calling
>> -.BR strerror_r ().
>> -.PP
>>  .BR strerrorname_np ()
>>  and
>>  .BR strerrordesc_np ()
>> @@ -317,4 +315,5 @@ are thread-safe and async-signal-safe.
>>  .BR error (3),
>>  .BR perror (3),
>>  .BR strsignal (3),
>> -.BR locale (7)
>> +.BR locale (7),
>> +.BR signal-safety (7)
>>
>> Signed-off-by: Shani Leviim <sleviim@redhat.com>
>>
>> Regards,
>> Shani Leviim
>>
>> Regards,
>> Shani Leviim
>>
>>
>> On Thu, Jul 13, 2023 at 11:12=E2=80=AFAM Florian Weimer <fweimer@redha=
t.com> wrote:
>>>
>>> * Shani Leviim:
>>>
>>>> @@ -169,6 +172,16 @@ is too small and
>>>>  is unknown).
>>>>  The string always includes a terminating null byte (\(aq\e0\(aq).
>>>>  .\"
>>>> +.PP
>>>> +The automatically generated buffer for
>>>> +.BR strerror ()
>>>> +and
>>>> +.BR strerror_l ()
>>>> +is sufficient to avoid an
>>>> +.B ERANGE
>>>> +error when calling
>>>> +.BR strerror_r ().
>>>> +.PP
>>>
>>> I think this gives the wrong impression that the pointer returned by
>>> strerror/strerror_l can be used with strerror_r.  This is not the cas=
e
>>> because the application does not own that buffer, or know its length.=

>>>
>>> Thanks,
>>> Florian
>>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------nVy1EuztzEoKviEW08bDuYkR--

--------------lq0t1ks0c1Bcz0azs2S6a0wq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEDykACgkQnowa+77/
2zK0fQ//ZaYbcyMYyhcLSMSHgnoWfKjfqgTMXs5tqrz7MJgggX0VWWVhrTHWjYlK
gm5YIK+vgxV9AtGJYUcMkIdWqOK9BW8/Z4ahRRYqXxHJ/Qv6llMYkXwJYyxDZ2df
PP6NCoR1ooUBiCB3atOyt49MsqHOusvCE0CHr85RAN5dSQbiFml6OJfh0WrTyJxt
rO7aM53n4ulMuA5BMlwO7XqIfsqLhZkvgf0mq2XKl/+Drogp+OaRbz8o8imHfvm2
Tx/cIwxoa7dqgg9nC12ZN42FBkFtf51y0ZcmMO3K3jnAAFxwN8B1uubmKXy+fLfM
0tBeNint4bpiSIs97eUfms0B/le1iBwEa27IDNjSW8HxjXlTPAFxtQ/HxPo2MWwd
HmzHQdWRIYpZz5xr9VBJtZu57XKdzF62QeMixCKZhd9MkyxW+7XtKHfydVig/78k
4WXqOP+sIGwlnHyeE2v5QetDtjjWt44T34WL5siJGWAmgOy8vudHulvoLcQ2HGQq
DJLzyFdyvie0IyD2lgbX5uCBdpt2+m8RI+h/spt3IygJK/rrnQ8BsS13VSDGtaYE
BNxwzUuoOcpiF8d8cW3jXJDX8IO6di/AG+BUaNZlZioT/pUWbSrTYmyDKg1yHWaX
+RTfJJD1gbpMAf0ACVtWEB+vvSAgxYsTJbeK9VyLkAUbMkWEseI=
=IqE8
-----END PGP SIGNATURE-----

--------------lq0t1ks0c1Bcz0azs2S6a0wq--
