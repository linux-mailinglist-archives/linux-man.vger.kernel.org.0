Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FEBD780CFB
	for <lists+linux-man@lfdr.de>; Fri, 18 Aug 2023 15:51:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343493AbjHRNuq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Aug 2023 09:50:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377440AbjHRNui (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Aug 2023 09:50:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 717F535A1
        for <linux-man@vger.kernel.org>; Fri, 18 Aug 2023 06:50:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E7D3C61CE0
        for <linux-man@vger.kernel.org>; Fri, 18 Aug 2023 13:50:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D715C433C8;
        Fri, 18 Aug 2023 13:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692366632;
        bh=Nlkrf/98C5r0ivLGxsyOikDLTlcaTw7UoowGvTv2kEc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=XD7IgzTNsvcsGexdErMWhaFcaAqZDsShDyIqINP8BfjDd8LHjLTnik39325JGw/qb
         cSTEsKR0bOyq7nfJDeoIqIIdGX6YlmNLYe8zqjQSgKIXDpSOxhBzns0ziHb8TrHqCt
         YY9ayZ/G7sY6Sd6uG0MGRhs/mIcwYFYBZh5K2K1DoedIRDJIME389AE1ZSMBF7CAiZ
         HSxZ+w4tNPOGfihgbXhrLsmbAk3lEcC9s6NCPXNdnw6ghQ2azRi1T4GzwWeQBQhBB5
         nuXNltDQ3lCGf66VtMt9oT/5hZt7VHEBBMxj438GmovOri73g+oZuDpeqZSYSWNQTH
         /ZD25Xpp1NkuA==
Message-ID: <64e14441-c527-8fbe-c9d0-023dda5bde38@kernel.org>
Date:   Fri, 18 Aug 2023 15:50:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: groff features for hyperlinked man pages (was: No 6.05/.01 pdf
 book available)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Deri <deri@chuzzlewit.myzen.co.uk>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca, groff@gnu.org
References: <20230815005022.47vpqsjoczn4vyii@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230815005022.47vpqsjoczn4vyii@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mEm6F8Zd5lAaAFOPtvQwMgGO"
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mEm6F8Zd5lAaAFOPtvQwMgGO
Content-Type: multipart/mixed; boundary="------------bUSiIj2Ymo8Ok7QrCzIizg1C";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, Brian.Inglis@shaw.ca, groff@gnu.org
Message-ID: <64e14441-c527-8fbe-c9d0-023dda5bde38@kernel.org>
Subject: Re: groff features for hyperlinked man pages (was: No 6.05/.01 pdf
 book available)
References: <20230815005022.47vpqsjoczn4vyii@illithid>
In-Reply-To: <20230815005022.47vpqsjoczn4vyii@illithid>

--------------bUSiIj2Ymo8Ok7QrCzIizg1C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden, Deri,

On 2023-08-15 02:50, G. Branden Robinson wrote:
[...]

>=20
>>> I just re-read this, and am confused.  '\-' is an ASCII character,
>>> isn't it?  In fact, all of the Linux man-pages pathnames are
>>> composed exclusively of ASCII characters, aren't they?
>=20
> You're thinking about this at the wrong level, Alex.  `\-` is a *roff
> special character.  Unless converted to something else by character
> translation or character definition,[7] it goes to the
> device-independent page description language as a special character too=
=2E

[...]

> It is up to the output device to decide what to do with that.  groff's
> "ascii" and "latin1" output devices put out a U+002D character; its
> "utf8" device puts out a minus sign, U+2212.  Now, before anyone
> defecates a brick about the U+2212 not being easily greppable, nor
> useful for copying and pasting to a shell prompt, the man(7) and mdoc(7=
)
> macro packages override that.

So, \- is kept as a special character, even in man(7), until output
drivers translate it to ASCII -?  Or which program does the translation?
If it's gropdf(1) that makes the translation, I guess it will also be
able to perform the same translation for MR.  If the translation has
already been made by troff(1), then gropdf(1) shouldn't care.  In any
case, I still don't see the problem.

[...]

>> .BR persistent\-keyring (7) ,
> [...]
>> Which when converted to .MR calls looks like:-
> [...]
>> .MR "persistent\-keyring" "7" "," "persistent-keyring"
>=20
> Urp.  No, it doesn't.  Not unless you changed `MR` in deri-gropdf-ng.
>=20
> .BR persistent\-keyring (7) ,
>=20
> when converted to an `MR` call, looks like this.
>=20
> .MR persistent\-keyring 7 ,
>=20
> I expect man page authors would violently protest if they were told the=
y
> had to type all those quotes and, worse, repeat the name of the page.

Indeed.  I won't violently protest to Deri's experiments, as I do worse
aberrations while experimenting, but I would if this went into groff(1). =
 :)

>=20
> One of the selling points of `MR` is less typing (no parentheses).

I woudn't really buy it just for that.  ;)
In fact, not having a RM variant, it's more typing when (foo(1)).
But yep, not being DRY would be a trigger for burning the streets of Pari=
s.

>  It
> is hard enough to sell that macro on the linux-man list without
> inaccurate claims entering the fray.
>=20
> Now, if I understand correctly, is quite possible that something you're=

> doing in your branch is having `MR` call another macro internally to
> prepare a hyperlink with some "anchor"--I won't say "node" because
> collides with GNU troff internal jargon--information.  (This is
> suggested by the heavy quoting you showed, since when macros call each
> other with arbitrary numbers of arguments, and those arguments need to
> be kept separate in the callee, the caller should use the `\$@` escape
> sequence, which is analogous to the POSIX shell's `$@`.)

I'd expect that the hyperlinking ability should be modifyable with
groff(1) --I don't care at what level of the pipeline--, similar to how
it was modifiable with man2html(1).  But the source code shouldn't know
about it.

[...]

> I don't think it's naughty; I think that by and large, man page authors=

> don't care to give "anchor names" to elements of their document.  They
> want the macro package to figure it out.

Indeed.  I'd like groff(1) to figure out some name that resembles the
text used as man page reference, or as section heading; I don't want to
specify it.

>  I think one reason--maybe the
> only reason--people are getting a glimpse inside the sausage factory of=

> GNU troff internals is because we haven't had a defined mechanism for
> getting character data to an output device that is neither (1) intended=

> for formatting (writing visible glyphs) nor (2) in the printable ASCII
> (Unicode Basic Latin) character set.  That's the aforementioned Savanna=
h
> #63074.[3]
>=20
> Looking farther ahead, I think a further step is required if we're goin=
g
> to have intra-page links; we're going to have to have a way to
> disambiguate duplicates.  In practice there's not much risk from having=

> duplicate section titles in man pages, but I reckon a big, complex page=

> could duplicate subsection titles.  And if we automatically generate
> hyperlink tags for paragraph tags, those would likely need it as well.
> Maybe representing such internal anchors hierarchically will be enough:=

> "section_subsection_tag" or something like that.

Yep.  I'd expect something like that.  You could also include the page
name in a book, which would involve the changes suggested by Deri of not
having the page title hardcoded as the first level, right?


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------bUSiIj2Ymo8Ok7QrCzIizg1C--

--------------mEm6F8Zd5lAaAFOPtvQwMgGO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTfdx0ACgkQnowa+77/
2zI5EBAAlcjLfhp+WUP9uV1j58p8LPq+OHol1+zLwLPfnXRagXxBy89OFn3ipPAQ
uAPiwUrHMZYtL0qmsavcMrRMDM76SH2x9/C/GCX7Cl9b7eLdvVbbNe2oGfvBImQm
cr5o/d8bCo3lD8BvSZGmHynbF+ERYVgjy0RjVeQ9Ys5WYm1vlHxfcSP1qXduzYKv
GejZgD38ctaF+cdPvdl7griEOupUMzZ0zaZQkVF1wH993YGhiR55k9Wp4ra3wGHH
IgF9uUKnPvnUOQY4yZhq/Qc3aXkQtCaHaf+b2LM26Xm5W9puK184VxDfJweI0rVy
hhuIbYksbBpbPg7Pf5KC6LJ5gA0z7gZ+LkFCrM34Ar9ld11b67eNHJ4GUYY7P4cp
mMdIdRhgMboZzKoJdLSjOAdwD8MnADpletlBuv9qqYd1OsT82ZmLc1JSX+WsYkZb
AbaUSBCgBabNQOSvH2sYP7YhMOhNLJHZ+RgfF3iQC4/E7u4J9U2ngGRKfHKKz8JK
YSwnlZjMBEaMekpYT440GV5gWNRVPvcy0ig5nTDzySXMbz+bxOd2JrA/x1qe1caD
bDfcA1sc90bjPIPWrzzc/qD6HUVpspf+kSvfeefcUeONSX5DR3UVS7Eov8Wsqwov
Xb/AfAeWxkbCgqtG0QK8iOsnR6PrWQM+Qm17Zh+OCqUCUJFxqXM=
=aKQ4
-----END PGP SIGNATURE-----

--------------mEm6F8Zd5lAaAFOPtvQwMgGO--
