Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EA6B677226
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 20:55:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbjAVTzk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 14:55:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbjAVTzk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 14:55:40 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E6AFFF10
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 11:55:39 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id d188so8752565oia.3
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 11:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ePr8YpMucWAH3vIQDvbVV236E5UQa8LagW1oF56/aWw=;
        b=K6lXNmdad0DnH0Q5E3tjeJ1+ktXjnNVh71QC0HnvSVM06d9QcNt1twZkuvr9zebrak
         s2XYk9CBJQ88Rr8N71nNxLz/eme4QnniaD57qOLMSdYEVIKz0JGocU6VLaIdYIoykERY
         FckMndvR3M9IS0zMWQPT/FbgG8miAfPaqnAJZgSvlzuQJfp79UWt91TU27OlblwJ8LVp
         h3AsL7r3Es2hP5/x3z+EvEfPrINOJ0hrBUMZe9mNzd31gFBU3w/R/+BnKrsTMuWFfhyM
         9trJWav3+ndW9J4XGj0N9iNg5n4d8HUsHFKOx+1ZQ+vLkuEbaDjVzkXBFEvDBadXFRDG
         OOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ePr8YpMucWAH3vIQDvbVV236E5UQa8LagW1oF56/aWw=;
        b=VjwZVH9AXy6QmU9Js8TS0J/Bz0pVUo23fs0ComEcREas2nXPUP9aw3CSPVOj/M784q
         c6JX0pAwsxQr4sxasQX0dYKIcvoo699ob5UfckvLB3f5IbgkIb4kaUEi+qwDgVyXk+0U
         6u93gfUSfq3BWWmkDy3rSctX09R6FHmBqXuHKQb5J52kmRk7QlLZ/TQ4eBTfEpznRU6r
         bv6DH3540P6n//Us9NUj0F/nCi+RA+/aGEKgLG7SmnS1BQBiJF/Mad/IZQLaP5WPbSws
         ReGArNJ0mpS9FrUXZq7Tu2nVGlziY4JW8SGUyso0+EQFx+dFyI3O5SwhVOJaFs4rpMeH
         gbiA==
X-Gm-Message-State: AFqh2kooPBxPRa97VG3KYCc00f+c+6ejHQpRjfrEKKXweOA+g2fZXQ65
        b4g9fU6xeMsvqYKncVScVj3J40jwZ3Q=
X-Google-Smtp-Source: AMrXdXv4g6dlzWxg7ALFNms9JVVcVvN/OB6wbS4hYmM0sKFHVE1SsHKIjsPa1H1zZuUNm17i6DRjiA==
X-Received: by 2002:aca:1710:0:b0:36e:b552:1ec3 with SMTP id j16-20020aca1710000000b0036eb5521ec3mr5568544oii.38.1674417338821;
        Sun, 22 Jan 2023 11:55:38 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z17-20020a544591000000b0036ed074f028sm2631897oib.58.2023.01.22.11.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 11:55:38 -0800 (PST)
Date:   Sun, 22 Jan 2023 13:55:36 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page intro.3
Message-ID: <20230122195536.y3tejcbcbcx7emfd@illithid>
References: <20230122193135.GA29436@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tjtpgdzdhpfekrxw"
Content-Disposition: inline
In-Reply-To: <20230122193135.GA29436@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tjtpgdzdhpfekrxw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2023-01-22T20:31:35+0100, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    shopuld =E2=86=92 should

This was fixed in 6a6d1d27a4c4eb8229d88ce2f4ef068d0521a7e8, 2 January.

Regards,
Branden

--tjtpgdzdhpfekrxw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPNlLgACgkQ0Z6cfXEm
bc76ag//eNvBJthJFFQ0kQx6ziL/S0KFEcHlk1skQvdpm2Rg5Y9EM48rk3KdQ1pI
hDqmU5ogNgtCrgA8nBKQ7PQO6VMXF9X9CMEpvhuUVTMBkyED7cpsjLlGtWMr3q77
RFKxuc5ETQCW9QTgXD3+EVmDUg9d3NW2S4pc/j7tm5an7k7GM7NeKz5Q5LaYDoE+
yKwMBhSBwpCHqL/Lh+jBoM1pCxP/nyxtA8dIRU8WkuGJFtnGVdmBCrBSgrQr90lh
5GdvL57erKMEQ8/PlF5Xwr4uwOye7ohJgc7tCKe5h+R/zWxrerf+Eq3aSxkAaZf+
0ROrevJFEHcqwrZ74w7wULTaMmpA6E8C5B8y1OGrzRWCeXIPDPiFUlN/Xov0MRpR
ok6m+AzjX1cfaItpnTSBerc/s1AVUCGyO3GI8sf3T7YiCtEhJnw6a5TD5lFThlvy
cQSqxD3xhf9YxS1bIJn9Rm6s0wVNeuaAO4DCu8wyKlSv5y6LlSKCxDp27u19W0ug
zWcNExSOfEKKVFx7oJG2iUXI+O8c7kvPYLJQqraAlIa3ZJAamay95h3t9Ws2W2C0
v8dTwWdtVqIC2BLAraiQLe85IqpjZUG38WewWWltc8xL+ZBJjTUoCMz/XQB1r6uk
isGmd0iA9n+nf59GUgrt/LuGNN7jBnIOejqGKw5214qyhmS71W0=
=zWfv
-----END PGP SIGNATURE-----

--tjtpgdzdhpfekrxw--
