Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF743693A46
	for <lists+linux-man@lfdr.de>; Sun, 12 Feb 2023 22:37:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbjBLVhk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Feb 2023 16:37:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjBLVhj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Feb 2023 16:37:39 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C0FCBDFB
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 13:37:38 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id o15so7054651wrc.9
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 13:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BoHkBBDC2U6/0bBJRE+zl2DeRfYJzH1qa/BHV39kwSQ=;
        b=YoYA2vRbGaKii+y8/SnlMioGVOsBpCSFj2tCy/8hfnFLqEtavyC6sdOt9GTVsOxNdA
         lpn9AZXpdW5i3ZA8R6gq/GKQ/3Idgk+220UY37ESIwfaJq1MOsECBHVkldViEjAPkUJf
         iBnsJoOZlUh47wIaCWaVlsFmULXaydRT7YuoRlbmor/7VCemuaNiHjnvLFCk3fJfg8Jv
         eeacY6DjEqGlEz/eCdGPBElW9P5eswIplBalqu2znw8nehue9K7EUk3QJLKuXXkSNnB4
         UKhkHoDPtibZ4rGXosx/4hktvbQ2qCCOL1xhF6vOaTxSoGkRZxA8QCx4TRGFLL1uHaoD
         Fx5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BoHkBBDC2U6/0bBJRE+zl2DeRfYJzH1qa/BHV39kwSQ=;
        b=MIwppd2QF/xxT+70hTMNyGC1EESUoFqyxjtDj87rirlTIMM8BfCmy8YYShr2eUMAYk
         AJ7lqfKvXYrudVvI7Q2g+r6tHoQtIYgjLbIzccmkITZkJoa6OyVbg1NYsN/civJFdWeb
         hRjq/4wG4UgFvSvHcSNZ3aIh/ibjsjQE3kndngaAVqCVEknIegLMr6TY9SsoGU0Umxuf
         uDGu/N5OQBZ3/42BDwsulzBjhgAqZ9y6bv2YXmvjchZxbovtkzQyAno4lYPtcttdsPp3
         eSLkc1MOZe8Zx3qEvF35WXfcq1zpuE+4Tt0Vv+1lhF5+lG7uff8Y3FeolEjvJDn9v0Fi
         PfGQ==
X-Gm-Message-State: AO0yUKWPW8YuRfg3kPtD/rOH/3DDTq/I2RGGHmzvxPOMNIoqOcvjsdQ7
        NP+CckspfqDhiBVDgyxOBGk=
X-Google-Smtp-Source: AK7set9927RwlsRmdOVhJZl2+S2KMJ+m3G8OL+vRfH/zkUtXYToyFc9/xZH2czU2i01aGDXBD1eO+A==
X-Received: by 2002:a5d:43cb:0:b0:2c5:54a7:3636 with SMTP id v11-20020a5d43cb000000b002c554a73636mr2075104wrr.2.1676237856637;
        Sun, 12 Feb 2023 13:37:36 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w1-20020a5d4041000000b002c546d169ddsm7442679wrp.11.2023.02.12.13.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 13:37:36 -0800 (PST)
Message-ID: <665dd2b3-3e55-5dfc-1c59-666c479c73fd@gmail.com>
Date:   Sun, 12 Feb 2023 22:37:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To:     enh <enh@google.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: online manual pages
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jINZWVYxhg3p6UUkpJ89mSKq"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jINZWVYxhg3p6UUkpJ89mSKq
Content-Type: multipart/mixed; boundary="------------b60h0lw1345hJCfPyv4T01pU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man <linux-man@vger.kernel.org>
Message-ID: <665dd2b3-3e55-5dfc-1c59-666c479c73fd@gmail.com>
Subject: online manual pages

--------------b60h0lw1345hJCfPyv4T01pU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Elliott,

I've pushed the new PDF book of the Linux man-pages (Deri produced the sc=
ripts to produce it) to kernel.org with the 6.03 release of the Linux man=
-pages.  Since you mentioned that you needed Michael to maintain the page=
s in man7, and we don't seem to be able to contact him to do so, maybe th=
is is good enough for you for now.  Please have a look at <https://mirror=
s.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.03.pdf> and s=
ee if it serves your purpose.  Maybe you can suggest some improvements.

You can already link to specific pages (and specific sections within page=
s) within that online PDF.

So far, I don't plan to add an HTML website of the pages, but if groff(1)=
 improves in the future, I might add HTML manual pages in the kernel webs=
ite.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------b60h0lw1345hJCfPyv4T01pU--

--------------jINZWVYxhg3p6UUkpJ89mSKq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPpXBIACgkQnowa+77/
2zJxlg/9F6QNOoYpQmFue8ETA949LibAo3jxWRdKesrJKRIFAiGkdBHlMd4AV9l5
0bykcG3UqweqPokNiNrcuXKmzuKsh7NdD2jOMf7DBa6AKLLPTU6vYn5w7JXpG9qj
LuP+liVzgqawp5tJQuVORR834ImRF/RKbv3KFmgH8od6lrka+t91PrlhDFjhWBTV
B+foIiRPjz0wzJxqVjWY9TG06U9Ch6YE1iqdztvrCtF1ej3+gN5FJGPMUPQs7kbJ
ekeBN2JGMnkxqjtDWGGZK09fQvc3JTOtZavMaZ55vom9SeQqcgE8Vo4peRe4lPzo
0h7DYLMgIeLtb8ahwGsN9bVswUgR7zaLydQOFTrfXfwBUCUQNdKW2GH2MQPwSJ+9
gE8za0pZ8rergjCncUf75RgTEGBRRd6KrLzxOUBZk7yCW3BRspRCS8yNIYZUORqA
rjusMMKntNYMqDiGCKxQEXR0/AoARff9uflmRTjKLBs11BG4jwpxjHYwbTspFWz7
ubv7mcGLGb0l5UWp8GwWPuVVlfZgkOnEJpAqR7oCodmnBZv5HZfRbRhcRT4T7dfF
mS8Zq9rbvPqgm3ko85BY8dS6dXI6676K9/OEfjckInqldgcmt5wX68MOtuqklvMU
I9WJ+xFxcQermA1mwf5oUe6Dqb7BRiznUgnCSCJ5TAf62j489gY=
=nLXI
-----END PGP SIGNATURE-----

--------------jINZWVYxhg3p6UUkpJ89mSKq--
