Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC625767F17
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 14:23:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230001AbjG2MXE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 08:23:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbjG2MW5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 08:22:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDDB3134
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 05:22:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6309260B98
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 12:22:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36D3EC433C7;
        Sat, 29 Jul 2023 12:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690633374;
        bh=7flsynX1ZLIcJg+cFZVkGcqc0WfN6zED6Fy7FlQ0CQw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=n8ug069sdWGDjWJ9XXjgTRjGS3eU4I5rWCBzQgxHBCGh+i8m0dLLdMUr4vtX8ToWL
         3MxuSqGAETyUfkPvSqE/XhgcB6J6XNRqgNuPhoRIpJwMCFsYsi20rTlSNu+c/xDVpI
         nSh6tTMm5jOiKmWAnmWjMmvQQEdV885uUkSF7fhOJauPVARUvxk25+wftCfbo/b+ds
         UQocbmVNmXR4pS9DreKznQgVhx+QaPHRq8QPVwTyIbB03WK1UOPAE5TR+efyGgYGTN
         vAXMTFpFBxDEt9F/Y9QbwLyzf2Yf3OlqG8QB6Rpx6xTWYkz3S63k8QC47tnWipv+VY
         oMc6l4XjH/d5g==
Message-ID: <64e619b3-c2c0-fd68-a109-07f5173b8f21@kernel.org>
Date:   Sat, 29 Jul 2023 14:22:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/6] man.7: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230728175718.v25t776r3xqzxbog@illithid>
 <e6e1d97c-e6c2-9cb2-0e7b-3944e2858a24@kernel.org>
 <20230729091156.4c73m3p5g7cqph5x@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230729091156.4c73m3p5g7cqph5x@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kie5P7wQM50r0tgYOoKMzvZq"
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
--------------kie5P7wQM50r0tgYOoKMzvZq
Content-Type: multipart/mixed; boundary="------------owMdRALJHz6fw9ENX7VDLHmW";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <64e619b3-c2c0-fd68-a109-07f5173b8f21@kernel.org>
Subject: Re: [PATCH 1/6] man.7: srcfix
References: <20230728175718.v25t776r3xqzxbog@illithid>
 <e6e1d97c-e6c2-9cb2-0e7b-3944e2858a24@kernel.org>
 <20230729091156.4c73m3p5g7cqph5x@illithid>
In-Reply-To: <20230729091156.4c73m3p5g7cqph5x@illithid>

--------------owMdRALJHz6fw9ENX7VDLHmW
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-29 11:11, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-28T22:56:10+0200, Alejandro Colomar wrote:
>> On 2023-07-28 19:57, G. Branden Robinson wrote:
>>> Clean up in preparation for "MR sed".
>>
>> Moved this into the commit message.
>=20
> Thanks!
>=20
> [...]
>> I wonder why all this appears in your email body.  How did you
>> generate it?  I bet not with git-format-patch(1), or that you modified=

>> it manually?
>=20
> The latter.  It had been so long since I had submitted a series of
> patches to this list that I forgot that I had a shell script to help me=

> with it.  I used it for v2 of the two remaining patches, so if those
> are well-formed, all I have to do in the future is remember my script.

I wonder why you need a script.  I usually do the following:

$ git format-patch -o patches/ master..HEAD --cover-letter -v1 \
	--cc linux-man@vger.kernel.org --to mtk.manpages@gmail.com;
$ vi ./patches/v1-0000*;  # edit the cover letter
$ git send-email ./patches/v1-*;

which has grown finger memory so much that a script would
over-complicate it.

(I have a global gitignore for ./patches/; see:)

$ sed -n '/^\[core]/,/^$/p' .gitconfig
[core]
	editor =3D vim
	excludesFile =3D ~/.config/git/gitignore

$ cat .config/git/gitignore=20
# vim(1) tmp files
*.swp
*.swo

# Store patches here:
/patches/


And BTW, for -v2 and subsequent revisions, --range-diff is very
interesting in git-format-patch(1).  Other times, though, it's very
confusing, and --interdiff is more appropriate.


Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------owMdRALJHz6fw9ENX7VDLHmW--

--------------kie5P7wQM50r0tgYOoKMzvZq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTFBJEACgkQnowa+77/
2zI/lw//TO8vuQ6B4jxapiwF9gjv+A+kVCepl0o8o+svN2vcIFmHGFQGkZzbPpmm
/EqG1227OcNK1CQpMtSTIwAAK2Adsd+wbIa0sWI8nlYxpEzgDTgehpuQl3AmkyVs
lF54YOEUz6dukH3dyqfI2Yw+4MWbkfy47eKlVBPpJTve+eHFcRJqDHFI+ELbkYFd
2rJ9tF77ThhrpB8gRZ0TXFRrxd2Zw0FSAXmQu0+d65Za0XMjP6OsywZLu0FWYcMb
oltR9JOQtCBeqPkqHoU9KDw2ggeYq4lK79UESq5Ro9F9tS3YCcP9aC4MF9B5D2JX
TnTTUkruTQ6ChUB6qRuONJWGYynIYh13NHrX0uaaTsowQd0M4uXB+OjPXCY5QVg9
hEIFlLv3He/Kgx+L3rY7c6tf470ItEQagbbzIfXxENro0r/PwFnkeAkvaDHjOUYt
LYjsx3ShYol7i+fIjuxiaX/LT3HgTG7zmNIXGV9ZxbWBCHb5vJnAomaWc096Xdaw
0zASYkWgr1/8t5qFwLQJHfKOU/poFjpYVAdSCe36cR9HDNlwEdue2U+4VOtWF4we
xkII7/kWJ1kOjDHIpbFQcQBh13ZGLivFXtQZc6cjXaRxRpk0CtYv8rM4dsuEf5Ey
Fjd9sXBgNlLYSn1a2lxubcHZSW7oJqbZ6RhAxppMvoLkzIJF5ic=
=6YhL
-----END PGP SIGNATURE-----

--------------kie5P7wQM50r0tgYOoKMzvZq--
