Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A21970FB2D
	for <lists+linux-man@lfdr.de>; Wed, 24 May 2023 18:00:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238023AbjEXQAu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 May 2023 12:00:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238039AbjEXQAg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 May 2023 12:00:36 -0400
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65DD91A6
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 08:59:43 -0700 (PDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.west.internal (Postfix) with ESMTP id 052A03200BC1;
        Wed, 24 May 2023 11:59:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 24 May 2023 11:59:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=cc
        :cc:content-type:content-type:date:date:from:from:in-reply-to
        :in-reply-to:message-id:mime-version:references:reply-to:sender
        :subject:subject:to:to; s=fm3; t=1684943951; x=1685030351; bh=ES
        EjLvIKzlZpmAQrazcr+3zsW8Pbz25u0+z/e+wqwvI=; b=ZZRpAPKjs87x8poGIP
        ZsJ/U5F9O2t7UKaxaJiIbBdlwu6xVs1DMHomlSK4060jd3by7YJBeGzQPMF4CNWX
        LAYv+lC0hJp7ivpReBqs9pE+S13KCuvvYd0YqP6mOYL/J0f1l0ywe3xQESurnsjs
        qyS6eKgSADheKyvwDsDO5M+NKSafqEmSLNwEqIE0CncFrswUwlfUB5vhHhTRowMW
        hgSZKifF0Su9+edA7Isozi916KbrdIUgrwkJXTV66TUemJ1ydn60VKrd8zLPFx0p
        Fi3L4rbBH0CEzAB6H+SC8lFo/Wxj3EIQ9oLlqu8DgZpPCK6UHoYlSTcOFaRtdTUS
        ImjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:content-type:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm1; t=1684943951; x=1685030351; bh=ESEjLvIKzlZpm
        AQrazcr+3zsW8Pbz25u0+z/e+wqwvI=; b=MD/r7fP12fFsZO7jxcXrmxgV4NgoD
        c2mKREUsyac1bgsfrZGDMquIAAaJLIsoY4zKvY6N1cSHAja3I+DRybfwjw91n810
        yn6C9QrvJ5Rc/sgJAZ2y8m9K+osI6M13J6oVh2nuZxAnTRQfuGfx8dAmV9fWMxMi
        yOOT7Xz/uDe2w8O43PZoesa3dlL4DM4jEvrPiaBJMB7bn7wosu1dzyr56Lt/850d
        BoHlCZ5Co3x9HHZs9jcZ4deyLAoK6H9Sra/SzxDbMtjsr3r0NjO9UjIu2naKOX1m
        Gy+KfbAwr3p7a8KZ/B1PBx2l1AqMUWvjQSteHhFLtMZLMtUW8AqRGt79Q==
X-ME-Sender: <xms:TzRuZLYxGQ2BpYNHoDP6ofThfNQ0PsqhmgTnYkwSPn1PhjWirD-Ilw>
    <xme:TzRuZKbKISa2WjV8-Yg8Qx7CAu-0df4OidVGbyy6GoMhtxdQU3zWzgqjgZBe0IRz_
    pQCRHoP9Kr5qKXbGw>
X-ME-Received: <xmr:TzRuZN_E3FQqT1y0wQbU2TnyRzspTqAaEuAatrqtxQSr3fo5AdNnx_o3dStPbyjIqQYER-6x6mrwt2PBtwU_vKYT_EQv4jsASQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejhedgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehgtd
    erredttdejnecuhfhrohhmpeetlhihshhsrgcutfhoshhsuceohhhisegrlhihshhsrgdr
    ihhsqeenucggtffrrghtthgvrhhnpeegjeeigeejhffgffehueeludevhfeiffefudegvd
    egudfhudejheefhfeugfeghfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehhihesrghlhihsshgrrdhish
X-ME-Proxy: <xmx:TzRuZBqZV5-yHPO2rMtBj0r81TDk39Pus2j8_2ZDcEdAX6dc6HLgOA>
    <xmx:TzRuZGpQFXj7_eNGjm__MX8-CdnquSLblhtx81uvEQMS7AY6raU9bA>
    <xmx:TzRuZHQV8dV3H0guJa_NyY2uD6DkQVVPnm4IYcElqFfwocgescUgEg>
    <xmx:TzRuZNT-QywqiMWNskZVlw3k6G3hCZoo8BV_9VOBsfXPOi6YpWAPBA>
Feedback-ID: i12284293:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 May 2023 11:59:11 -0400 (EDT)
Received: by x220.qyliss.net (Postfix, from userid 1000)
        id 0D2F05164; Wed, 24 May 2023 13:37:50 +0000 (UTC)
Date:   Wed, 24 May 2023 13:37:49 +0000
From:   Alyssa Ross <hi@alyssa.is>
To:     bugzilla-daemon@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: Re: [Bug 216951] New: close_range(2) page missing; closefrom(2)
 needs refreshing for glibc inclusion
Message-ID: <20230524133749.zvfxbnlkgdpmww6o@x220>
References: <bug-216951-11311@https.bugzilla.kernel.org/>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pdgaxfwbxwi3ipyw"
Content-Disposition: inline
In-Reply-To: <bug-216951-11311@https.bugzilla.kernel.org/>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pdgaxfwbxwi3ipyw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 19, 2023 at 01:45:57AM +0000, bugzilla-daemon@kernel.org wrote:
> man-pages currently doesn't document closefrom(2) at all, and is outdated=
 wrt

Shouldn't it be closefrom(3)?  There's no closefrom syscall =E2=80=94 Glibc
implements it using close_range (if available).

--pdgaxfwbxwi3ipyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEH9wgcxqlHM/ARR3h+dvtSFmyccAFAmRuEyQACgkQ+dvtSFmy
ccD6QQ/8CbzaXl4EqoXCDNmeEF2omz5uRZKVIP0A/NTdH6bNa4igDMewa6QKNGvB
PG2U0LaLPo5BBxz7BCiBBknhxQg9R60sZDBPDVq64/v3aOmChdoqW9cjeH4txVqR
fWlYpAFFaaMegfz+4edgpZQr33mga6d39xx7zL85lsAffqlbvEUvjETUJSHVbmNu
KuXerr6G6jB7O9oa8tiSwdBm3OpQLkI9JcEjqrtoBaSWJkgAbh8QraO0ENu+4enb
eOd48B4a0a9RuE6bmfjtQNmnutUfq4d055KFjHdv9dpCgKcwvHM0gZ3k2r2HlQ9E
3IF/sAPiGZUuq+QlPPFqJlCV29aZilBSr9tJScxdC8mFObGJqmn5F5DUFbdWhXuN
eFumruaXAlPWQlGGhoo3OgsPSG4cMdcHKgiiD39Z25MZgvfcWBz80tzSjyxZrbO0
R9eGaQHIyiXbGkIxkJPDSASwCiPfB5KNRVB/Ib/4cK/zKPors1jWfKmdF61ve40D
VcSdbJOlmGxJmiLA+HrIZ802r2f+cVAc1afsh8lRfNS+rWjHD7re1LW692eUdmMi
K/T2fk92/NzmRXax4L51LAOuNVclcMax3OhZiG9INO0JUs106kPN4Wyo+vjFCStt
TexyAkyWoQEt5xexsE2AqnVrK3iP0r8qJh0GVB2DiG22+QYuV90=
=Iw/L
-----END PGP SIGNATURE-----

--pdgaxfwbxwi3ipyw--
