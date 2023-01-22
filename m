Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3799367722D
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:01:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbjAVUBy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:01:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbjAVUBy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:01:54 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD5D165BB
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:01:52 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id s124so8778711oif.1
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+cO9QIAP77ycAcQWfZGAuCzqjvEg80MX/4jynud159M=;
        b=Kb3hc1QcGOcSH/B8huvlBnF/VHn9EPAlhUKYHeFDNB00MnmnZ0dMpKv+3Yz4Pr0MRp
         7YJPr2x5tlBbKwU2xxw41Q2NQKKqlsfAvoeBFDkb7ybnPdMlpYohUOZcGWxM19MeNXXe
         ZAuHpHxM0RWsNLdJE/ciuxrfvikxmw6XpfzXtE0M4S6uUk7m6aX/MOKXGHSFf1zfo7xs
         Zjn4xiFmW1+R0Lm1jm2m0sq9eoJMqme0YqSTBKuI9JuWhu+CR867H72NbT+NujVreYL7
         5omFl5KbezThOCI2ukBnz3cSrWLgUKwNR2xwzwdomLS6AYujH2sVF1fpKgEkwRJkywuC
         3bYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cO9QIAP77ycAcQWfZGAuCzqjvEg80MX/4jynud159M=;
        b=k3Atx4OLaUhiA6MSLx0OLjs2gxgNr4AJYxUB7Wl9R+FEYmjUKSEzZe/R3qU7ClXrhs
         RzuaHPbKIBn39qOPQJL08pqYbq/OLmJfMxlnKId//vhEPSCfLE5aEMcO5Z0ohXA4D9Ik
         fbtnBpBVD+UmoQQE9FE4yacDJbbPzuhF7zAlundbuEha0T3ihz05+qEQExCunqs+6PtP
         4fW8FRR1k5oej9xINc267AotADjeqNN+qeXboHL5bijlVynyvOZsht1+TH3Snn7QJhfD
         YKmacYU08fHok5eI/Y4CLdRs+o0ZKoP3AKTB9JZsVLpWbz1cqHJxljOgX+7ko+Wzt/Zc
         Vkmg==
X-Gm-Message-State: AFqh2kqAeFLOd8FbDh6I560MQ9eCd2AWxlFMwovwW3/GVQLMCRZfW2GR
        +fK18kSzUFLsW0I5uqjtXjU=
X-Google-Smtp-Source: AMrXdXujQsf2X+4qIvSBcMAgG7sPK9HPCZjNYgVKgFU4012BfuCysMgwSdOaz/SoIGE8PRUT/0KzMQ==
X-Received: by 2002:aca:5856:0:b0:35c:3410:ac69 with SMTP id m83-20020aca5856000000b0035c3410ac69mr9974556oib.19.1674417712153;
        Sun, 22 Jan 2023 12:01:52 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y18-20020a0568302a1200b0066f7e1188f0sm24281152otu.68.2023.01.22.12.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 12:01:51 -0800 (PST)
Date:   Sun, 22 Jan 2023 14:01:49 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page wctype.3
Message-ID: <20230122200149.54quo22te2kckbee@illithid>
References: <20230122193133.GA29288@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ne73msxxlwpduwvh"
Content-Disposition: inline
In-Reply-To: <20230122193133.GA29288@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ne73msxxlwpduwvh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2023-01-22T20:31:33+0100, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    all locales. =E2=86=92 all locales:
>=20
> "The B<wctype>()  function returns a property, given by its name.  The se=
t of "
> "valid names depends on the B<LC_CTYPE> category of the current locale, b=
ut "
> "the following names are valid in all locales."

I disagree with this.  The material that follows does not serve to end
the sentence; it is a displayed list of items with no grammatical
structure.

The colon in English must be followed by an independent clause. (A list
of comma-separated items, or a list of semicolon-separated items that
contain commas is tolerated after a colon by some style guides.)

It is distressingly common that, in particular, programmers use colons
as a hatch for escaping the rules of English grammar, but it is _not_
correct usage, and any migration should be away from this practice, not
toward it.

Regards,
Branden

--ne73msxxlwpduwvh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPNli0ACgkQ0Z6cfXEm
bc4uLg/7BycMyRGHCzO3y/2haI5GNHLpR4CZGY875ESHJIXtvO6d4wtLIicjhmAv
XXv+U0PkGOzhbC6vS0IE/sK3POUY4h+LevlAOETASJFDbyn00Ib4ZDmycgx1AAjh
ZBVUwXogZwLwvKayyuVZMbejawwMa/UMvgzCXSyQYR+FYH3O/7AHcG9XjDWNullQ
Zz3HTzuaBYcxXLe/QNPNOUAH/nOKs8ZxRJ5LL9ylsLPsEzNgQvbjL71uWisTYZlW
bh2bQxBdmuyPKimOhHCNeCihbkUzjrSPNdGslHv2HpcpRgTcQ3BL9hfyen3EYmP7
PbHa8TtEtuPxJG7OjQiWT7mh6I9TlmZ/3XZd94ZvvKguW+wlzLdzokA3OYMqA+iT
/xY7MUSApazYSCyqLvxOkUfHkOSeeHnxjunPQPXg1nB6CWhoFoEgMCvMZfBUu4qJ
OkhP6Amgk9PvcMJCnymtIK6j85asKXljUOCI5j4YphJ0apU85tuuVQVbIK0/ti+V
KBIsZ5DLbGZxEyn7R6fYaZGqDboCNL7Y172p2leYJimryljAaney8QY5Bv8I9vWB
9Fy6U0uGErvlW5S8h6RSLS4ljmW6wp1+X5ZPyAHNUscdTZ4VGz3Ptz2egBunFJQ+
Occ0gMNBQJzYvLSAKDgiPgjfCrMWI3sr6Jc6PHT0rcH+8WGMzug=
=R0/w
-----END PGP SIGNATURE-----

--ne73msxxlwpduwvh--
