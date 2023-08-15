Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95DAE77D044
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 18:45:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238552AbjHOQpD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 12:45:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238553AbjHOQoo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 12:44:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD0EA1B2
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 09:44:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4A94F654C5
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 16:44:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87931C433C8;
        Tue, 15 Aug 2023 16:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692117881;
        bh=HFKPy6OEowWYyFK4zF1JuGcAPTIJZCKHLKOTYL0/VrM=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=bSpgjLxbvMr4xH1Jtsq0Vy5ui5rcALZqNsChct09m68O2UEMk9MKNG+UyPK85roBd
         EvbmEMzVMdL7v7ji8G1WoZXmWoML8/Yb1lNNKGab3DFFL4jQc0W7nHJPOsRvM/9MMe
         TbaGPorWDGEB5YXWjmDlyVXkCIATx9EoCfzOxWWW5cqClddAEN7fngQhnZW93q7aZM
         2FK5hkdbnQ7qtqyNV1Uj4WvA4uRs01tH2a2vrjqMMW1vg/sCGM7AmIaxJathZ96mqQ
         hTVURNiPHgY6EN1vmsCzzcUhvkqet39xaI576eadMQstuFR5LEUxk1fZy9Sahgvj+0
         grKDRfrhJu9Qg==
Message-ID: <67c97aee-fdcf-ed82-8e1c-17e739fd1a19@kernel.org>
Date:   Tue, 15 Aug 2023 18:44:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: proc(5)'s sashimi
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, cjwatson@debian.org
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
 <20230815153657.kczpio6qmyceftnz@illithid>
Content-Language: en-US
Cc:     Ingo Schwarze <schwarze@usta.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230815153657.kczpio6qmyceftnz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fL8eR7SGgLbtqxgnXr4aYizZ"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fL8eR7SGgLbtqxgnXr4aYizZ
Content-Type: multipart/mixed; boundary="------------CgGCMJk1Tlv9VMm0YxBNznyG";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>, cjwatson@debian.org
Cc: Ingo Schwarze <schwarze@usta.de>
Message-ID: <67c97aee-fdcf-ed82-8e1c-17e739fd1a19@kernel.org>
Subject: Re: proc(5)'s sashimi
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
 <20230815153657.kczpio6qmyceftnz@illithid>
In-Reply-To: <20230815153657.kczpio6qmyceftnz@illithid>

--------------CgGCMJk1Tlv9VMm0YxBNznyG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-15 17:36, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-08-14T16:06:16+0200, Alejandro Colomar wrote:
>> One of the questions I have at the moment is how should we call the
>> pages, and what should we write in the TH and NAME.  Branden, do you
>> have any comments on that?  I used underscores for the page title and
>> file name,
>=20
> I think it's generally a good practice to have the page topic (the firs=
t
> argument to `TH`) match the "basename" of the man page document's file
> name.  That rules out slashes there.
>=20
>> but for the NAME I used slashes (so the actual name of the interface).=

>=20
> This seems like a good idea to me.  Neither the man(7) package nor the
> formatter care what is in that section.
>=20
> Consider:
>=20
> $ cat slashy.man
> .TH slashy 1 2023-08-15 "groff test suite"
> .SH Name
> .IR /etc/slashy/ n
> \- configuration of Roguelike game,
> version
> .I n
> .SH Description
> Eat and chop.
>=20
> `nroff -man` and `mandoc | ul` both render this correctly.
>=20
>> I didn't do any italics in the name, though, so /pid/ is no special in=

>> the name.
>=20
> As shown above, I would go ahead and mark it up The Right Way=E2=84=A2.=

>=20
> Except...
>=20
> Unfortunately, lexgrog(1) failed.  CCing man-db maintainer Colin Watson=
=2E

I'm worried that mandoc(1) may have even more tight assumptions.  I even
warns you if the Name and TH don't match, AFAIR.

Considering that I can't have the right formatting, I prefer to leave it
with no formatting at all; otherwise, it could be confusing.  Having no
formatting leaves a clue that it doesn't have it because it's not
possible.

>=20
> slashy.man: parse failed
>=20
> For the time being, therefore, I would back things down to the
> following, which _does_ work.
>=20
> .TH less\-slashy 1 2023-08-15 "groff test suite"
> .SH Name
> .I /etc/slashy/n
> \- configuration of Roguelike game,
> version
> .I n
> .SH Description
> Eat and chop.
>=20
> $ lexgrog less-slashy.man
> less-slashy.man: "/etc/slashy/n - configuration of Roguelike game, vers=
ion n"
>=20
> ...so you can still do quite a bit, just not change fonts _within_ the
> page "name" (which can be a comma-separated list of names).[1]
>=20
> Interestingly, the following _doesn't_ bomb:
>=20
> $ cat moderately-slashy.man
> .TH moderately\-slashy 1 2023-08-15 "groff test suite"
> .SH Name
> .IR /etc/slashy/n
> \- configuration of Roguelike game,
> version
> .I n
> .SH Description
> Eat and chop.
>=20
> Observe the missing second argument to `IR`.  `nroff -rCHECKSTYLE=3D1
> -man` would holler about this, but lexgrog chokes only if there's an
> argument there.
>=20
> $ lexgrog moderately-slashy.man
> moderately-slashy.man: "/etc/slashy/n - configuration of Roguelike game=
, version n"
>=20
> Maybe this is easy to fix, but even if so you'll probably want to wait
> until the fixed version has percolated in to distributions of interest,=

> or your man page won't be indexed, and not show up in apropos(1) or `ma=
n
> -k` searches.
>=20
> What if it's not easy to fix?  We could of course just give up on some
> man(7) features.
>=20
> Or...we could make lexgrog(1) unnecessary (more likely, a wrapper).
>=20
> I've had an idea for a while: what if the man(7) package paid attention=

> to the arguments to `SH` macro calls?
>=20
> And what if man(7) supported a string that could hold the name of a
> section heading of interest?
>=20
> Consider the difference.
>=20
> $ nroff -man moderately-slashy.man
> moderately-slashy(1)        General Commands Manual       moderately-sl=
ashy(1)
>=20
> Name
>        /etc/slashy/n - configuration of Roguelike game, version n
>=20
> Description
>        Eat and chop.
>=20
> groff test suite                  2023=E2=80=9008=E2=80=9015           =
   moderately-slashy(1)
>=20
> $ nroff -man -dEXTRACT=3DName moderately-slashy.man
>        /etc/slashy/n - configuration of Roguelike game, version n
>=20
> $ echo "sweet as"

That reminds me of man_section(), which is quite useful for reviewing
global changes to man pages.

I can, after a global fix to the SYNOPSIS, render all synopses, and
grep there if there's any inconsistency.

It's in ./scripts/bash_aliases:

man_section()
{
	if [ $# -lt 2 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>...";
		return $EX_USAGE;
	fi

	local page=3D"$1";
	shift;
	local sect=3D"$*";

	find "$page" -type f \
	|xargs wc -l \
	|grep -v -e '\b1 ' -e '\btotal\b' \
	|awk '{ print $2 }' \
	|sort \
	|while read -r manpage; do
		(sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}' <"$manpage";
		 for s in $sect; do
			<"$manpage" \
			sed -n \
				-e "/^\.SH $s/p" \
				-e "/^\.SH $s/,/^\.SH/{/^\.SH/!p}";
		 done;) \
		|mandoc -Tutf8 2>/dev/null \
		|col -pbx;
	done;
}

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------CgGCMJk1Tlv9VMm0YxBNznyG--

--------------fL8eR7SGgLbtqxgnXr4aYizZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTbq2wACgkQnowa+77/
2zIyKhAAibFSwPUpF/4pvAqkla7W/Aq7xqz3SgJfTwayiilWCd5UaFigMqdzNTtY
N80h9E+bsMyyzTIbyAXxKMRIThNlN+DVZEREkmQpB7UdFvgvRDbz5RrJfFC91IdW
R3+lDFIkEemrM+Wkk4OkvrnbeCUZkwLcCmWxCGRLweYcdatxp8QiUSPF4kvw1mod
hihnr82/rLisMz4nnAR46lXwtFD5FrDR/6uIH36oXdNjzotuyQzfTrRHWHNXHQ22
lcuvSi+3B86E9J75/to6si5KfcLK3UuZVXy4B9FbRud6I9/ZCg+5ZnihZL9O8jeq
kVXDua5LP6tDtEb6Gk+9z1UFl1a7oXUpFiRBbRj4olY0u7t3CX4hMe36RBrjdoLw
TIQB/cr0Q2jeGgLQ+ukJXAKx9pxpIq6JSvV8mJ/CXBEWt9Q4xNe8ukZdPcvOYKe3
/uyniEYpARahSm7bfR/75bCSVj8VPBERkXgnTrOFFES3WwqEzZuDapiBKC67ntoV
U20cq2snJdzbnerpr7GzOrvD2musU3u9yn46dPhLjJIugqqyJDSsRNIyDLY4dZm6
5PRE8rY/RWDXUFWd/mAlIZwFP/e7LbnMyrnrzRdZCsv5dnb1bUoSOqxQfRRhfCle
NjDa83FYgKNU+zEJcq9jxcRMnkY5g8B7YPsVInN6tLzVz4k7mYg=
=UJhN
-----END PGP SIGNATURE-----

--------------fL8eR7SGgLbtqxgnXr4aYizZ--
