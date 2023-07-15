Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 038F47549DD
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 17:44:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229812AbjGOPob (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 11:44:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbjGOPoa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 11:44:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B6DF2691
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 08:44:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ABF2F60BB1
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 15:44:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CD0CC433C8;
        Sat, 15 Jul 2023 15:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689435869;
        bh=AWMXGawfZB8TlGOG3ajS8cOZxCtNPIVMzAx2ysWemj0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Pe8F0N5wFYEphd0CNxZ7EPJGQOkMGdXnu2lSzaKW5ppjG0MWpEWMI60YrEj95UycK
         Tf7IM5/qwalilrCdhRQyXgE6hC5zK992jGcfjVDHP6IneMLcgw9aKQW1n0xyD2Y0NA
         Lc3/l5nZPrz6/etstSVNWdnfpd0/yGa/+XbJgpYxZZsvmBQL5TOKuQIRFI/Ss2IBzC
         PfZd12/fveBrKrLsT+17w1MFKmTPhf2rIDcjeDcFa0ok/u3Anq50Kv4ZO5NpEfIvsN
         dQNEZrLzc7EPEVxU5G8PQ9jbqh4iXWYPXRrG9RLp4/jRHK7TSLGEGj1fVQ6nNfkcbx
         rCYccAOL1SsHw==
Message-ID: <f665f5c6-2b9f-8b22-6ec7-5b4b75e21204@kernel.org>
Date:   Sat, 15 Jul 2023 17:44:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] abort: clarify consequences of calling abort
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>,
        linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <6aa0c5c1dd37704e283794ed828461d1e0831780.1688997554.git.tgolembi@redhat.com>
 <20230710152150.b7lwmzwmuqjxxsiv@illithid>
 <CACKs7VB0mkKo4f6D9QkFmFuA2UZT24vQVV8L_ZsbNujNVGpaTg@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CACKs7VB0mkKo4f6D9QkFmFuA2UZT24vQVV8L_ZsbNujNVGpaTg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0VOLTO4QIVihXylixxdeHZmd"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0VOLTO4QIVihXylixxdeHZmd
Content-Type: multipart/mixed; boundary="------------RT1032t9ZJVTNVWZOsmipfXn";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>,
 linux-man@vger.kernel.org, "G. Branden Robinson"
 <g.branden.robinson@gmail.com>
Message-ID: <f665f5c6-2b9f-8b22-6ec7-5b4b75e21204@kernel.org>
Subject: Re: [PATCH v2] abort: clarify consequences of calling abort
References: <6aa0c5c1dd37704e283794ed828461d1e0831780.1688997554.git.tgolembi@redhat.com>
 <20230710152150.b7lwmzwmuqjxxsiv@illithid>
 <CACKs7VB0mkKo4f6D9QkFmFuA2UZT24vQVV8L_ZsbNujNVGpaTg@mail.gmail.com>
In-Reply-To: <CACKs7VB0mkKo4f6D9QkFmFuA2UZT24vQVV8L_ZsbNujNVGpaTg@mail.gmail.com>

--------------RT1032t9ZJVTNVWZOsmipfXn
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-12 12:45, Stefan Puiu wrote:
> Hi,
>=20
> On Mon, Jul 10, 2023 at 6:41=E2=80=AFPM G. Branden Robinson
> <g.branden.robinson@gmail.com> wrote:
>>
>>
>> At 2023-07-10T15:59:28+0200, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
>>
>> I believe Alex's preference in the Linux man-pages project is to
>> document what is actually implemented, not to repeat normative languag=
e
>> (paraphrased or not) from the POSIX standard.
>>
>> So glibc should be tested to verify the behavior it actually exhibits,=

>> and the language above then updated to describe that, noting any
>> deviation from POSIX's prescription.
>=20
> At least when Michael Kerrisk was the man-pages maintainer, he would
> usually ask for a test program proving that the documentation change
> is correct and / or a pointer to the kernel / libc code, where the
> behavior could be (hopefully) inferred. I think this is valuable, it
> makes it easier to track why a certain change was made, and how the
> behavior was observed at that time. If running the same test case
> after X years yields a different behavior, it's clear the change that
> it triggered no longer stands. It's also fair, I think: the burden of
> proof is on the person suggesting the change.

Hi Stefan!

Thanks for pointing that out!  I can only agree with you, and
I try maintain that good tradition of Michael.

Cheers,
Alex

>=20
> Just my 2 cents,
> Stefan.
>=20
>>
>> The same can, optionally, be done for other libcs like musl.
>>
>> Alex, please correct me if I'm mistaken.

Hi Branden!

I won't correct you either ;)

Thanks!

>>
>> Regards,
>> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------RT1032t9ZJVTNVWZOsmipfXn--

--------------0VOLTO4QIVihXylixxdeHZmd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyvtoACgkQnowa+77/
2zKWYBAAkDB1RNWlJ9m0OYIdeTzWYtDClrfc+86llleI/qs+kFy2+wqY8iDWWYNT
uhBOk45FA6n3UxUKHcxwkYKlFgjZrg5dhgz2H4v2gvx00lIyZCk/WG6PhFIXbK5a
2afAfXa103V58WqDDPLjfyJmkzTWvc79fjDSOqj/H5FEIluL3jwDplEtdcHPJvet
h0nXzJtMvrJMgLH0mcJ0o7O3w9YOgQ36reHj2Hyeu/19TCBwYmI7CIX0bJlbFLiC
wf/XdWEq6YoIC52rCoBTI0WANjnGQARM2uyfkG7Oa52RlX4getlQq1KSqp1MVkJo
oLrCnTXwCQ9fUcOHap7M8upzcwfSi0yGa9L5QHCuWSgW105FTjBTP2kyv/tbUiIE
+jHGS/9aI40vPmBp8lbRlLJ3I0KHO5snYYO+OvzWWgs3WE4Cqt0wznxktp1kB8Q7
WHNTiX4n2vfBlh2q1de1sOAXwKGNGvzjVcu2s5wJRnS19aL2jWlSGoG3FRS/k3Iu
74wQymPvnNCYZgYmYgiYNHNFbf47eHSwdz7qe9LNpFQ6t4mqVDVYjomjK+rUpv6Z
istxugqSdwLbAFJjh1LIUea0iNbfs2rkHcpouzysnF8oZrXlFOjgOblG/H9tOu5o
hh2IZFGheVR26BBSDZxwj7pw7FDaRFcNu/ip856q1PJ2Nn0Acqk=
=jO+3
-----END PGP SIGNATURE-----

--------------0VOLTO4QIVihXylixxdeHZmd--
