Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E24A77FED6
	for <lists+linux-man@lfdr.de>; Thu, 17 Aug 2023 22:04:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349352AbjHQUEI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Aug 2023 16:04:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354499AbjHQUDk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Aug 2023 16:03:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFF2430DF
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 13:03:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6DBA161F41
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 20:03:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAEA7C433C7;
        Thu, 17 Aug 2023 20:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692302617;
        bh=DJaERi1/xIGeUJIiwp9et7d24JfYZAD9r+5TfaEBkSs=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=KHbgYwrvvmfnBCh1+/rt8c+8Vu+bxBz5aFvsNw069JdrPE0aHMvh1v7rh2vLDCVO0
         xH7vhMjrBuP6hhd7ccz/JVmkx+DwReMJt596gJvvtJ+rnnr53tDpoitBdlSujrDQPp
         lO7Uyvu4NiCgU9OucbEgMwi8KdTUcxvckCQqwvgQlbMJ+SSfbRoxHE/6MoW/eUTdTm
         rtdfJFVzf0NCZsloezNue+RJSBgZqm15VpwaTfRi2cyG5kAiO0CqDoM6SDF1sUS9Vd
         5hvhTVo/pdKXMhpcW3XeXdBQpm+BwQd1cVBXU8ul+qL8ZZhlNrk5nLohB5HcrxmVXS
         7hGfaYBnowBAA==
Message-ID: <e37fb06c-4c4f-3cb3-9c7f-81c64ae3644f@kernel.org>
Date:   Thu, 17 Aug 2023 22:03:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Content-Language: en-US
To:     Eric Blake <eblake@redhat.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
 <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
 <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kf2K074nEXXhvE0u0Fz4tSRv"
X-Spam-Status: No, score=-11.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kf2K074nEXXhvE0u0Fz4tSRv
Content-Type: multipart/mixed; boundary="------------KOXy999T7F0RdFfN4BzRSvYW";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Eric Blake <eblake@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Brian Inglis <Brian.Inglis@shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <e37fb06c-4c4f-3cb3-9c7f-81c64ae3644f@kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
 <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
 <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
In-Reply-To: <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>

--------------KOXy999T7F0RdFfN4BzRSvYW
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eric!

On 2023-08-17 17:23, Eric Blake wrote:
>=20
> I'm not sure if the POSIX original is quite roff, but I just confirmed
> that I have access to the repository where Issue 8 is being worked on
> (it required me to have an Open Group login, so you may not be able to
> access this page):
>=20
> https://gitlab.opengroup.org/the-austin-group/sus_base/-/commits/Issue8=
/
>=20
> I can also recommend contacting Andrew Josey (ajosey@opengroup.org -
> admin) and/or Geoff Clare (gwc@opengroup.org - most active committer
> in that project) of the Austin Group, to figure out if there is a way
> for you to get access to that repository.
>=20
>>>>
>>>> My understanding from hermetic comments to the Austin Group mailing =
list
>>>> over the years is that:
>>>>
>>>> 1. they have used groff for many years (a decade or more);
>>>> 2. they don't use man(7) for their man pages (I was told this direct=
ly);
>>>>
>>>> and
>>>>
>>>> 3. they use (a customized version of) mm(7)--or I _think_ I saw some=
one
>>>>    say this, but I have no citation and I am not even sure it was an=

>>>>    Open Group employee who claimed it.
>>>
>>> I'd love to have the ms(7) source then.  That way I would have a reas=
on
>>> to learn ms(7).  :)
>>
>> Oops, mm(7).
>=20
> Based on my quick perusal, it is indeed .mm files that form the bulk
> of the content in that repository.  For example, even if you can't
> access the repository yet, I don't think there is any problem under
> the fair use doctrine for sharing a snippet of a recent commit:
>=20
> | commit 7fad34c5f734d7a54c6a5fa8124baf819c2b8de5
> | Author: Geoff Clare <gwc@opengroup.org>
> | Date:   Tue Aug 8 10:52:54 2023 +0100
> |=20
> |     Applied bug 1741
> |=20
> | diff --git a/Base/Text/Functions/getlocalename_l.mm b/Base/Text/Funct=
ions/getlocalename_l.mm
> | index 13af2a5..339bfc5 100644
> | --- a/Base/Text/Functions/getlocalename_l.mm
> | +++ b/Base/Text/Functions/getlocalename_l.mm
> | @@ -12,7 +12,9 @@ const char *getlocalename_l(int \f6category\fP, loc=
ale_t \f6locobj\fP);
> |  .sE
> |  .yE
> |  .mH DESCRIPTION
> | -The
> | +If
> | +.Ar category
> | +is not LC_ALL, the
> |  .Fn getlocalename_l
> |  function shall return the locale name for the given locale category =
of
> |  the locale object
> | ...
>=20
>>> It would certainly be better than the HTML files.  It would be
>>> interesting to adapt the Linux man-pages build system to also support=

>>> ms(7) pages.
>>>
>>>>
>>>> We fixed a bunch of bugs in GNU mm for groff 1.23.0.[1]  I wonder if=

>>>> they will be cross with me about that.  Even if they didn't rely on =
any
>>>> erstwhile misbehavior, the source churned, some internals changed, a=
nd
>>>> if they patched the package, I wouldn't count on the patches still
>>>> applying cleanly.
>>>>
>>>>> Would you mind forwarding my rage towards the Open group, which IMO=
 is
>>>>> not so open?
>>>>
>>>> Maybe scrape off the rage first, or you might get a response from Ro=
bert
>>>> Elz, who is even more cantankerous and writes at even greater length=

>>>> than I do.  ;-)
>>>
>>> I promise to scrape the rage if I get a name and an email of who to t=
alk
>>> to.  Maybe Eric can help.  :)
>=20
> I'm not forwarding this email directly, but I'm happy to be a liaison
> to connect you with other Austin Group members.
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------KOXy999T7F0RdFfN4BzRSvYW--

--------------kf2K074nEXXhvE0u0Fz4tSRv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTefRcACgkQnowa+77/
2zJvCQ//R7HmXW/HtAnlYxACDEnYa2YfW5WKRwcqQAzl7aDTAoKYkt5pLJDXOh9r
oF0SsJsh0mNceoJbVCj6yUClD21Y5JPSiAud+lOziI5wnYopihxy4PMCQ+WriHpa
bRbofs4Q8h7PcIRX/0Ndb6VyLd1y4alSyXnpnPfLmXM8BeInPFE6zCcAdmRebNJh
9vDVAWBornngub92gOkmnMb7D9Of0fkvOczAsngIVaBg3Zh4qpz/UdVb4zGP/fuv
iwHqpPkiPz6FA+9LJmN/dIRtttmLb2gzW28QpaTGpgnIWo4LV/p8YD+eKtORpXiY
VC8hrNwewseoiQWvUZOIc63CoDWgxCkPSXomVYQy91d65jYcLl1/QLuPl/a7Fm0t
9p/mkUPWQSBVw3Hk7wEYK8E+xEOd10sKsu8g/YTHBpTHVHS95oP0Y6QjEB/Z40Cx
4b49y7jUeCb0QKTcKNVUP5eZ6yZu/dKoUJ+2eASpQVmboyrlBGFR+ffkSRdjiMlF
sWc9bNcD4uUGcBzmCh1Z6hWvVG0f2W3WtvnTFJEjxVQ07HdkFr+JDX3gNx4f29jM
PSwH0it+1urWSwgZRlpMuNGTmrH7QgWoFSqDV4BrFvA87AyxKUghLRma5OuMzs1j
3QaZorz6k7a8ydgZ4wzaGqNqz01BukRESiIGVrJX1o+yEHJeXA4=
=+Zxw
-----END PGP SIGNATURE-----

--------------kf2K074nEXXhvE0u0Fz4tSRv--
