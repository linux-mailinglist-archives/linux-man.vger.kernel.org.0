Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 075D9754CE9
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 02:39:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbjGPAjf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 20:39:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbjGPAje (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 20:39:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C69DA2718
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 17:39:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4CD5A60B9B
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 00:39:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26094C433C7;
        Sun, 16 Jul 2023 00:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689467971;
        bh=/y+dir9HkVutel82ruDH77F9AaYwHYIgYeqfrVuZ7WE=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=uBcDFEaDyzk/nvTz7rSC0yArFKIFZ60N+VNs+zIRQDeCRmTE0JSjCILwUI/Jd0wYN
         xv5hdF1IDEixOx9HKmvacjJ7ktei/V8CGYUbxBexWOwXShjPyzVnmPjW0rXtkgQgEM
         xDsmE0b8cG0tOJhNRW8i3yWQBE5DzV22X4wR37/BLKylZPAFoHk6yJIW4MMe4DC6IY
         2cklBh4WiVJXvMrUNZMiKNjGQgIhW711xznvs459bE769o5U2Jb2et3eCD+iQvuhkJ
         9d5qxJdT9+TsnvCvmw6rg+oC4l948GEOiejT+oovPnIx8CeIum1e2nJIHEAHFdcFFu
         GjowC8n1cFobg==
Message-ID: <4dc3d839-560c-de0d-71c1-bf6875bb57dc@kernel.org>
Date:   Sun, 16 Jul 2023 02:39:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [musl] Re: [libc-coord] [PATCH v4] off64_t: prefer off_t for
 splice, etc.
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Rich Felker <dalias@libc.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, Sam James <sam@gentoo.org>,
        libc-coord@lists.openwall.com, linux-man@vger.kernel.org,
        "A . Wilcox" <AWilcox@wilcox-tech.com>,
        Jonathan Wakely <jwakely@redhat.com>,
        libc-alpha@sourceware.org, musl@lists.openwall.com,
        Szabolcs Nagy <nsz@port70.net>, Jakub Wilk <jwilk@jwilk.net>,
        enh <enh@google.com>
References: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
 <20230709061011.1885809-1-eggert@cs.ucla.edu> <87lefpehgo.fsf@gentoo.org>
 <3d36e6b2-57be-148e-a6fa-d7734279671d@kernel.org>
 <20230715183511.GJ4163@brightrain.aerifal.cx>
 <ff17c973-56d0-8cf9-80c2-301ff57b7563@kernel.org>
Organization: Linux
In-Reply-To: <ff17c973-56d0-8cf9-80c2-301ff57b7563@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oo7pjiF67Oo0dSYM8Zr0htnN"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oo7pjiF67Oo0dSYM8Zr0htnN
Content-Type: multipart/mixed; boundary="------------vczZr3rFOuVnYFyx1Vlciz2U";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Sam James <sam@gentoo.org>,
 libc-coord@lists.openwall.com, linux-man@vger.kernel.org,
 "A . Wilcox" <AWilcox@wilcox-tech.com>, Jonathan Wakely
 <jwakely@redhat.com>, libc-alpha@sourceware.org, musl@lists.openwall.com,
 Szabolcs Nagy <nsz@port70.net>, Jakub Wilk <jwilk@jwilk.net>,
 enh <enh@google.com>
Message-ID: <4dc3d839-560c-de0d-71c1-bf6875bb57dc@kernel.org>
Subject: Re: [musl] Re: [libc-coord] [PATCH v4] off64_t: prefer off_t for
 splice, etc.
References: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
 <20230709061011.1885809-1-eggert@cs.ucla.edu> <87lefpehgo.fsf@gentoo.org>
 <3d36e6b2-57be-148e-a6fa-d7734279671d@kernel.org>
 <20230715183511.GJ4163@brightrain.aerifal.cx>
 <ff17c973-56d0-8cf9-80c2-301ff57b7563@kernel.org>
In-Reply-To: <ff17c973-56d0-8cf9-80c2-301ff57b7563@kernel.org>

--------------vczZr3rFOuVnYFyx1Vlciz2U
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I forgot to refer to the start of the thread:
<https://lore.kernel.org/linux-man/20230628191947.GE3630668@port70.net/T/=
#t>

The patch applied was this one:
<https://lore.kernel.org/linux-man/20230628191947.GE3630668@port70.net/T/=
#md5cb63f26575d9ecf5753027e7a87c2782d0d872>

On 2023-07-16 02:35, Alejandro Colomar wrote:
> [CC +=3D glibc, enh]
>=20
> Hi Rich,
>=20
> On 2023-07-15 20:35, Rich Felker wrote:
>> On Sat, Jul 15, 2023 at 05:08:18PM +0200, Alejandro Colomar wrote:
>>> Hi Paul, Sam, and Rich,
>>>
>>> On 2023-07-09 08:16, Sam James wrote:
>>>>
>>>> Paul Eggert <eggert@cs.ucla.edu> writes:
>>>>
>>>>> For the few functions that come only in 64-bit off_t flavors,
>>>>> document their APIs as using off_t instead of off64_t,
>>>>> and say also that code should #define _FILE_OFFSET_BITS 64.
>>>>> This documents what user code is (and should be) doing anyway,
>>>>> if it needs to work on traditional x86 and ARM Linux.
>>>>
>>>> LGTM and thank you Paul.
>>>>
>>>> I haven't checked for other prototypes/examples which need
>>>> changing.
>>>
>>> Thanks, I'm going to apply the patch.  Can you please confirm if I'm
>>> correct in adding the following tags?
>>>
>>>     Reported-by: Rich Felker <dalias@libc.org>
>>>     Fixes: 9bebb17e5b57 ("splice.2: Use 'off64_t' instead of 'loff_t'=
")
>>>     Fixes: 76c5631fb442 ("copy_file_range.2: Document glibc wrapper i=
nstead of kernel syscall")
>>>     Fixes: 5cabfa06b407 ("man-pages 1.68")
>>>     Fixes: 3ca974e3988a ("New page for sync_file_range(2), new in ker=
nel 2.6.17.")
>>>     Fixes: 9bebb17e5b57 ("sync_file_range.2: Document the architectur=
e-specific sync_file_range2() system call")
>>>     Fixes: 79bf8cdcf36a ("Document fopencookie(3), a library function=
 that allows custom implementation of a stdio stream.")
>>>     Signed-off-by: Paul Eggert <eggert@cs.ucla.edu>
>>>     Reviewed-by: Sam James <sam@gentoo.org>
>>>     Cc: Jonathan Wakely <jwakely@redhat.com>
>>>     Cc: Szabolcs Nagy <nsz@port70.net>
>>>     Cc: Jakub Wilk <jwilk@jwilk.net>
>>>     Cc: A. Wilcox <AWilcox@wilcox-tech.com>
>>>     Signed-off-by: Alejandro Colomar <alx@kernel.org>
>>>
>>>
>>> BTW, Rich, please note the commits that this fixes: most of them are
>>> the initial commit that adds a page, which means that the function
>>> had always been documented with off64_t in the "spec".  Only splice(2=
)
>>> and copy_file_range(2) have been adjusted afterwards, and in a manner=

>>> to be consistent with the rest of the pages, so I can only conclude
>>> that we didn't break the spec, but rather fixed it.
>>>
>>> Nevertheless, I'm sorry that it caused any problems to musl, and I'm
>>> happy that you reported them and so we can now improve the pages.
>>
>> While I like off_t, I am still unhappy that this seems to have been a
>> unilateral action from documentation side without even hearing input
>> from any major implementors other than myself.
>=20
> Since Paul Eggert is a glibc maintainer, I consider his input as being
> representative enough of glibc, even with the list not in CC.  He
> usually produces very high quality patches, and I know he has special
> care about very odd platforms where type sizes are not usual.
>=20
> We also had the review and approval of a distribution maintainer, Sam,
> so I wouldn't call this unilateral.
>=20
> It's true we didn't ask the entire glibc list.  I'm fixing that by
> adding libc-alpha@ to the loop; let's see if they have anything to say
> about the patch, which BTW I pushed a few hours ago.  And hell, while
> we're at it, I'm CCing enh from bionic too, just in case he has any
> opinion (although he probably read this thread from the linux-man@
> list).
>=20
> For future times, when opening a thread like this where input from
> glibc (or kernel) maintainers is not only welcome but essential, it's
> usually better to include the relevant list in CC right from the very
> first email, to provide them with full context, as I suggest in the
> CONTRIBUTING file.
>=20
> And while at it, I'm thinking that maybe we should mention musl's
> list in CONTRIBUTING too.  Should I apply the patch below?  Would you
> mind reading that file, and suggesting anything you want for
> preventing similar conflicts with musl in the future?
>=20
> Thank you all!
> Alex
>=20
> diff --git a/CONTRIBUTING b/CONTRIBUTING
> index 80052c38e..a030b54a5 100644
> --- a/CONTRIBUTING
> +++ b/CONTRIBUTING
> @@ -27,12 +27,13 @@ Description
>         discussed in a man-pages email, please identify yourself as suc=
h.
>         Relevant mailing lists may include:
> =20
>             Cc: LKML <linux-kernel@vger.kernel.org>
>             Cc: Linux API <linux-api@vger.kernel.org>
>             Cc: Glibc <libc-alpha@sourceware.org>
> +           Cc: musl libc <musl@lists.openwall.com>
> =20
>         For other kernel mailing lists and maintainers, check the
>         <MAINTAINERS> file in the Linux kernel repository.
> =20
>         Please don't send HTML email; it will be discarded by the list.=

> =20
> @@ -186,13 +187,13 @@ Description
>  Reporting bugs
>         Report bugs to the mailing list, following the instructions abo=
ve
>         for sending mails to the list.  If you can write a patch (see
>         instructions for sending patches above), it's preferred.
> =20
>         If you're unsure if the bug is in the manual page or in the cod=
e
> -       being documented (kernel, glibc, ...), it's best to send the
> +       being documented (kernel, libc, ...), it's best to send the
>         report to both at the same time, that is, CC all the mailing
>         lists that may be concerned by the report.
> =20
>         Some distributions (for example Debian) apply patches to the
>         upstream manual pages.  If you suspect the bug is in one of tho=
se
>         patches, report it to your distribution maintainer.
>=20
>=20
>> Is "you can't use these
>> interfaces without -D_FILE_OFFSET_BITS=3D64" an acceptable outcome to
>> the glibc folks?
>>
>> Rich
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------vczZr3rFOuVnYFyx1Vlciz2U--

--------------oo7pjiF67Oo0dSYM8Zr0htnN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzPD8ACgkQnowa+77/
2zJWFQ//eM7hXD8pV4O6lBlRKsuL8S2skQ87AXjLNRsM51iZwsPLU13rOS8UBDSJ
kJDd/C6LcCMsGEPsYAQ/mnYeKQ5AeYzxzbslu2qw/9Guef7GxsV8qV/pXKD6kVCM
poBH0GTxV8IS6XbyM5Rcon8F0I4Z7WwJ6XjY7D6NR3ZkkW/JIh625vg/urQCbRbJ
ASKJwixOr1cSdx39+9t26eM0cHsSPBxODo903eqCWsJ49h6wTFcpQGkhcyfHLrNm
bRHon8pl6uh0zwfMgHQVSXb3buxs6p0UdkgSpHsO6xa+LgNPjp3B1TUEpqcmLqsv
pPndkYjZSTdYxPg7onVhMeYcjj7aI9KOPadizVUwMjFXxT6zMdJAV9TCAmS4ujTi
m9tnishY340PaZfRsSNOJitTWuzbAPp/tFTpuKPn1uf4KmiizQ34VxbInkzlaEa9
99UmXo5dnx5wGPtl6V6QpJRrXWR4UdwvGr6UVXcvUsKRssT5+f+Y3JZaCReJ1xe5
cIQSV5QQKjqPnwXGJEwDzOI0bAHKXvhGCH5jmWGganbnrmc8UdOomlRg99z9xlV/
R8a9Qlh/C0aWYhQat7DD+5KTxWTKrPyVcTJ/3fHBv4SQd358Mv0aJ3NZfE5RZOXG
J3DiP4EFBBIAsVbpr3Lbthuvz7/NvNfkeCY1bEUi9GJ8WOLJ3ws=
=VDAO
-----END PGP SIGNATURE-----

--------------oo7pjiF67Oo0dSYM8Zr0htnN--
