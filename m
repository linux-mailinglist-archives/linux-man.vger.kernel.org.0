Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63EB57E2A8F
	for <lists+linux-man@lfdr.de>; Mon,  6 Nov 2023 18:01:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232927AbjKFRBA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Nov 2023 12:01:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232920AbjKFRA4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Nov 2023 12:00:56 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D61F5D77
        for <linux-man@vger.kernel.org>; Mon,  6 Nov 2023 09:00:53 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF64FC433C8;
        Mon,  6 Nov 2023 17:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699290053;
        bh=VSL5sK7LEDd3GjnaMhl/l1T19G3vjnlYGD2NUz9inQk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gzzXwNIkwdPS88n5orAqnwFya5DYelNUG+lmeTbM+6odyF+Hn5u+rv1h6pkwEl430
         WIVghYuzQ3ABS8CClm7XS32bdxyk7s+HhAAGfYjNIxFH13Jq3TMKnj3SfPaVm3HzGN
         fZxF1C2u6SMs1u1bQ6aCWHglpN9PkjLIyVDZBZBLCqJVcU0sLmvHIwK4ncFGY2s0x5
         rsEmuJH4DjbhJQOWAk57F+PDvaIBex9LUg2KFoR4tw9YGp+ExVuwfA6tPCIDRdiTj4
         U2MhfpQ5z5twyAl5QdMRIvFnjhGbjScq6nW6qvvuAgbGasedVBtN9bdds4Lc3Tl7va
         n0fgc7wW9UWAg==
Date:   Mon, 6 Nov 2023 18:00:44 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: PSA: migrating linux-man to new vger infrastructure
Message-ID: <ZUkbwnCT8jgozq4f@debian>
References: <20231106-rampant-shaggy-mongoose-39eefb@nitro>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="+SeJh+SQZz9VKNpN"
Content-Disposition: inline
In-Reply-To: <20231106-rampant-shaggy-mongoose-39eefb@nitro>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--+SeJh+SQZz9VKNpN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 6 Nov 2023 18:00:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: linux-man@vger.kernel.org
Subject: Re: PSA: migrating linux-man to new vger infrastructure

Good day!

On Mon, Nov 06, 2023 at 09:20:38AM -0500, Konstantin Ryabitsev wrote:
> Good day!
>=20
> I plan to migrate the linux-man@vger.kernel.org list to the new infrastru=
cture
> this week. We're still doing it list-by-list to make sure that we don't r=
un
> into scaling issues with the new infra.
>=20
> The migration will be performed live and should not require any downtime.
> There will be no changes to how anyone interacts with the list after
> migration is completed, so no action is required on anyone's part.

Same mail (vger) and same archive (lore), I understand, right?

>=20
> Please let me know if you have any concerns.

LGTM, thanks!

>=20
> Best wishes,
> -K

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--+SeJh+SQZz9VKNpN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVJG7wACgkQnowa+77/
2zJ9yg//Y4pRce1WOp5jLcmx7smmscxyXlZZSZEy+QYbyGDC7HmjU85tY5YvaZJa
rcpQ8ZI9cHZW5lG30zBM9KbxqGheQwdVk5U1R1xVDB4gwi3JCHEMM8S5OFvBqUsY
Uq+cOrmdYaAwj3rv+yXq5Gf+6izr/viX6AlbfvU9PlEytzzzkXvYrUdjdE8BN43K
cZiMqFDMUrgBTF3Z3p+JT4mUXt6Z/T01gZAsBYuIR6SSogNlBwiYSV5L1djoWOpJ
Ktk3Wtrj6xnQuhSivOyf21kVL0wpao1R8Le0y2J9XwkS3Wun2lCLtvkzm7c12BI4
pGJoOOg4XxAf/nVMrpjGmZ7NQo3P20L5sLYWoAQjLDKoQuq/TvH+Rfk44pllWHl5
Z3dhuS7iUkyd0GGUNUwPY1UFoS1OPHX+CJgUKRWVX73rGH3318VJoCXaj4S27p56
qW5dhQkm0MUoaVINLjbSB+bh7lmQDoY0N6G/+03CiB6f6rEJrpjDZ+97n3rHSmR9
eRKVDt4A5aYaArKnZpSUyBqLvacyrHV6Sgd1AEUGWXcfNDdWw1EJ8rzNXCREhaPc
84U8xoEQFSpaWQWFsRRP3uOxVshWRd4E4Gy7Qq6MHZ64V39Ejtx/jijOc2AC01c+
DyMGA3PnSyIY/auWNe9G8dBd/HrsyuHZTj3I28sGzYrzjZsbJ6s=
=lkFI
-----END PGP SIGNATURE-----

--+SeJh+SQZz9VKNpN--
