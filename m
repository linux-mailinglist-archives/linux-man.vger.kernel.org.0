Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C7D077A744
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 17:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231464AbjHMPLx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 11:11:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbjHMPLx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 11:11:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76B2BE54
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 08:11:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F216860EAC
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:11:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF38CC433C8;
        Sun, 13 Aug 2023 15:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691939514;
        bh=riSH5NYACfDogO7t8PEMm6WUhmFRYOYyachBGDwGJIo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=jBlEhFf86Oj7JLmQmFME+4PuVG6AdZqA2h2qTlOn5uM8MDM5F7rmEYFKap3v0k76y
         yZ6PTXUPruGnSOgFcjEnLmyu0gZ3Lf12SR2umA+f3rJtG5qwRnfzCIPp4/+NL5wpXv
         5ycimJqm6WYanZqKFCmqxlg/2oDwZeLhuvxW0cPgfEoQg/s0b7n3Y4HD1su4kcHgeu
         oaVyxHKPPmMilEvX1wAixnBD8fiDNJzZDyolaKzAep+kFwfTtNgIDcGxfEFAz7aKaN
         MOM1EIKo/3d97cc+HxFyBs4xQ9Gu4hSsNBuv0PmmYoN7lsOrTJht74eqpYXaMhTwQE
         8Nh3LPByLc+LA==
Message-ID: <8068e7b6-5cdf-4f0e-6344-0dd6263625f4@kernel.org>
Date:   Sun, 13 Aug 2023 17:11:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to
 MT-Safe
Content-Language: en-US
To:     Shani Leviim <sleviim@redhat.com>
Cc:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
        automotive-devel@redhat.com, Carlos O'Donell <carlos@redhat.com>,
        Gobinda Das <godas@redhat.com>
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
 <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
 <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
 <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
 <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org>
 <CAMO6KYo7+y1a4WY5R2pQ+y4Y2k+wCbGLYwU7cih_mDHOT=HFnw@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAMO6KYo7+y1a4WY5R2pQ+y4Y2k+wCbGLYwU7cih_mDHOT=HFnw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mbFHp2YnY1wAuKmbNk1RWCIX"
X-Spam-Status: No, score=-8.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mbFHp2YnY1wAuKmbNk1RWCIX
Content-Type: multipart/mixed; boundary="------------M21sKM0G7nX0o8xMRTp4nLAX";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Shani Leviim <sleviim@redhat.com>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
 automotive-devel@redhat.com, Carlos O'Donell <carlos@redhat.com>,
 Gobinda Das <godas@redhat.com>
Message-ID: <8068e7b6-5cdf-4f0e-6344-0dd6263625f4@kernel.org>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to
 MT-Safe
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
 <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
 <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
 <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
 <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org>
 <CAMO6KYo7+y1a4WY5R2pQ+y4Y2k+wCbGLYwU7cih_mDHOT=HFnw@mail.gmail.com>
In-Reply-To: <CAMO6KYo7+y1a4WY5R2pQ+y4Y2k+wCbGLYwU7cih_mDHOT=HFnw@mail.gmail.com>

--------------M21sKM0G7nX0o8xMRTp4nLAX
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-13 16:37, Shani Leviim wrote:
> Hi Alex,
> I am re-attaching it.
> I changed its name once it was created, so it may have caused an issue.=

>=20
> git apply --verbose
> 0001-strerror.3-Change-strerror-reference-from-MT-Unsafe-.patch
> Checking patch man3/strerror.3...
> Applied patch man3/strerror.3 cleanly.
>=20
> Sorry for the inconvenience

No problem :)

However, it still doesn't apply to master.  I see that it applies to
somewhere between man-pages-6.03 and man-pages-6.04.  Could you please
rebase it to either a release tag or the master branch, or specify the
base to which it applies?

Thanks,
Alex

>=20
>=20
> Regards,
> Shani Leviim
>=20
> On Sat, Aug 12, 2023 at 1:52=E2=80=AFAM Alejandro Colomar <alx@kernel.o=
rg> wrote:
>>
>> Hi Shani,
>>
>> On 2023-07-30 15:41, Shani Leviim wrote:
>>> Thanks, Alex,
>>> Attaching the patch (see attachments)
>>>
>>> From: Shani Leviim <sleviim@redhat.com>
>>> Date: Sun, 30 Jul 2023 15:51:07 +0300
>>> Subject: [PATCH 1/1] strerror.3: Change strerror() reference from MT-=
Unsafe to
>>>  MT-Safe
>>>
>>> The information in this patch was obtained from a glibc upstream patc=
h,
>>> commit ID 28aff047818eb1726394296d27b9c7885340bead
>>>
>>> According the patch above, for glibc versions >=3D2.32,
>>> strerror() is considered MT-Safe, and the man page should be changed
>>> accordingly.
>>>
>>> Signed-off-by: Shani Leviim <sleviim@redhat.com>
>>
>> The patch doesn't apply.  Can you please check what's wrong with it?
>>
>>
>> $ git am patches/0001-strerror.3-Change-strerror-reference-from-MT-Uns=
afe-.patch
>> Applying: strerror.3: Change strerror() reference from MT-Unsafe to MT=
-Safe
>> error: patch failed: man3/strerror.3:238
>> error: man3/strerror.3: patch does not apply
>> Patch failed at 0001 strerror.3: Change strerror() reference from MT-U=
nsafe to MT-Safe
>> hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch=

>> When you have resolved this problem, run "git am --continue".
>> If you prefer to skip this patch, run "git am --skip" instead.
>> To restore the original branch and stop patching, run "git am --abort"=
=2E
>>
>>
>> Thanks,
>> Alex
>>
>>> ---
>>>  man3/strerror.3 | 31 +++++++++++++++----------------
>>>  1 file changed, 15 insertions(+), 16 deletions(-)
>>>
>>> diff --git a/man3/strerror.3 b/man3/strerror.3
>>> index 862e153ee..6a3d83164 100644
>>> --- a/man3/strerror.3
>>> +++ b/man3/strerror.3
>>> @@ -71,11 +71,12 @@ part of the current locale to select the
>>> appropriate language.
>>>  is
>>>  .BR EINVAL ,
>>>  the returned description will be "Invalid argument".)
>>> -This string must not be modified by the application, but may be
>>> -modified by a subsequent call to
>>> +This string must not be modified by the application,
>>> +and the returned pointer will be invalidated on a subsequent call to=

>>>  .BR strerror ()
>>>  or
>>> -.BR strerror_l ().
>>> +.BR strerror_l (),
>>> +or if the thread that obtained the string exits.
>>>  No other library function, including
>>>  .BR perror (3),
>>>  will modify this string.
>>> @@ -100,12 +101,12 @@ For example, given
>>>  as an argument, this function returns a pointer to the string "EPERM=
".
>>>  .\"
>>>  .SS strerror_r()
>>> -The
>>>  .BR strerror_r ()
>>> -function is similar to
>>> +is like
>>>  .BR strerror (),
>>> -but is
>>> -thread safe.
>>> +but might use the supplied buffer
>>> +.I buf
>>> +instead of allocating one internally.
>>>  This function is available in two versions:
>>>  an XSI-compliant version specified in POSIX.1-2001
>>>  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.=
13),
>>> @@ -238,7 +239,7 @@ Interface    Attribute    Value
>>>  T{
>>>  .BR strerror ()
>>>  T}    Thread safety    T{
>>> -MT-Unsafe race:strerror
>>> +MT-Safe
>>>  T}
>>>  T{
>>>  .BR strerrorname_np (),
>>> @@ -249,6 +250,10 @@ T{
>>>  .BR strerror_l ()
>>>  T}    Thread safety    MT-Safe
>>>  .TE
>>> +.PP
>>> +Before glibc 2.32,
>>> +.BR strerror ()
>>> +is not MT-Safe.
>>>  .hy
>>>  .ad
>>>  .sp 1
>>> @@ -292,13 +297,6 @@ to
>>>  if the error number is unknown.
>>>  C99 and POSIX.1-2008 require the return value to be non-NULL.
>>>  .SH NOTES
>>> -The GNU C Library uses a buffer of 1024 characters for
>>> -.BR strerror ().
>>> -This buffer size therefore should be sufficient to avoid an
>>> -.B ERANGE
>>> -error when calling
>>> -.BR strerror_r ().
>>> -.PP
>>>  .BR strerrorname_np ()
>>>  and
>>>  .BR strerrordesc_np ()
>>> @@ -309,4 +307,5 @@ are thread-safe and async-signal-safe.
>>>  .BR error (3),
>>>  .BR perror (3),
>>>  .BR strsignal (3),
>>> -.BR locale (7)
>>> +.BR locale (7),
>>> +.BR signal-safety (7)
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5





--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------M21sKM0G7nX0o8xMRTp4nLAX--

--------------mbFHp2YnY1wAuKmbNk1RWCIX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTY8rcACgkQnowa+77/
2zJLJRAAmdqa14Kv64tfRBEsARC8sO4Gh3c6a3VX6uIUcuiRRduwzGsGvLSNgHom
Owei8g84suog6j/vhiEdSUQI73RnwQB2musIQoeLGF9STF+s3lxsxiUxNF7qBOFZ
n5b7pTcu1VIPGBU5IAWXJ3iRMPQCvarr2nB+tGWWoFztnu2tOc2xjB2Bgpk8OxcT
RP1f0G5TID42pQxItQnSb+bDZ7XEqp4C3u2Ig5ZBQQ89TYIFnQTVPKL7MhwcdyQb
ZbHEa2XL0umAcVEY6tCTCJaTntTiSxkkKbawTiTK4IO1XBlUWkqSU5PQDT/gwCmA
R8LNHh1Z/LacEY6a2UfHXgIzIetx540trlJMT/beS54TzXWMN0f8IXj4crDFJV6I
pMwRpkGZWPEQ4fcjEyQavmAgNLkI0EgHO4I4NzhEiXvdqEsdIYy8MWL9h68EylDP
jhReyDcKAb1+clhfgsO8VNvWZBqv7n7yuWdjjN+p/4nWmyzvGpevR9lZpRp3Us0u
jiWtpaZL5D+mvVaTdQ16NC8FxanRfHwI9eGsEoFQVs7F0WOO7RBUhVYnFoO294El
XZGIfkQkjMdY1pMnUi6u9n+GTU3WFwoyYgChIUducKepmJYluDTd2WUgvbo2nnO1
hRfh11rnpeDphXbmu0wxHm/uYjTjFKrQ8bSyuKEEMvB9FESqdJA=
=snuX
-----END PGP SIGNATURE-----

--------------mbFHp2YnY1wAuKmbNk1RWCIX--
