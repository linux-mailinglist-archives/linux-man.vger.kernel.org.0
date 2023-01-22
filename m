Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E065F677232
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:06:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230086AbjAVUF7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:05:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230137AbjAVUF6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:05:58 -0500
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 067DA93C4
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:05:58 -0800 (PST)
Received: by mail-oo1-xc2f.google.com with SMTP id h12-20020a4a940c000000b004fa81915b1cso1838884ooi.4
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IFK5RceAWZQ8DqhBPhqg+krkWnECEhrvFWp5YnVitno=;
        b=Xfbit2RSJHwYqG+dCwuGeABHA6yzz4MU+AQyeMBmDlJtIENLkYwYkANsoH6UUdq1U6
         SdzC+OG3R+0Z92iZhBDuICGkj+6Psg/4zmk2npKeBSU8rxHSNpir+l5UNdJL/OCXQlsR
         sUAVmWAWprZB2NQVhz5nc9L8yyLkH7dHG5oWx4OfcQUnkRG16SatoFTX75jg+hMhm8MP
         PiKxbrpXojoltSSYLZIjGAE+SMUFhsbSGSXt5zzrtfgMwZd4dZkYYuoZ4KpbY2SRnNjm
         4/z1dIqRDeiekLOvB9x4bKdbyOPVb8NxnWeKxhxiUbe7gBunSvWoSB0P3T0w98PM1YGq
         n7Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IFK5RceAWZQ8DqhBPhqg+krkWnECEhrvFWp5YnVitno=;
        b=tKTLuKtm8GcAHAbMGkuP/eG/28r7C/MKJznEvWMxhMOAKiwYTgF8UOc19pYRQYosX1
         +A01v7zMfCh6aAAdO5GkUGd/I3Brim+eQQh5e/uIaHrfLoacNlnCdP7IZTZVEggtVFNh
         2Chz/GKiwiDwbQp+1SaBZ9pGFT4y+wrLQEe+eSmgTiouF/uXcxrAiL+BIfIjdUmpBXN8
         /65zwpHLSFEigEYGkBinExyYLOcsUxxC48lqk/BHoOtmbKdtgLfih0suOoJaXOipPmFq
         +SVd5LeBKd9pGuiTixxLyxXX5UnSBy3NnDbnSFeSkgIn1eKi2z2TbID2pLqc3vmAE7/I
         ehww==
X-Gm-Message-State: AFqh2krpbIfgBz/RKWzbbnczLWSOdj/0TN8QkS+pNU6FTnmKw57abAoS
        MV1YHYitUXaLvxMC5jdKpbfq45PNG3k=
X-Google-Smtp-Source: AMrXdXtG1oMcd2ROTtIkNUPGMPl57CLzf1H4cwiHVROmqaBFMerNLgkQBpcLWrzLycu+4Nd8I7ClEA==
X-Received: by 2002:a4a:a6ca:0:b0:4d0:1b43:70e0 with SMTP id i10-20020a4aa6ca000000b004d01b4370e0mr9736490oom.9.1674417956310;
        Sun, 22 Jan 2023 12:05:56 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w15-20020a4ae08f000000b004f1f6b25091sm19954071oos.41.2023.01.22.12.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 12:05:55 -0800 (PST)
Date:   Sun, 22 Jan 2023 14:05:54 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page wctrans.3
Message-ID: <20230122200554.j3yg5gk5noae6rqw@illithid>
References: <20230122193132.GA29235@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="fhuqtxksucvomtoy"
Content-Disposition: inline
In-Reply-To: <20230122193132.GA29235@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fhuqtxksucvomtoy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2023-01-22T20:31:32+0100, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    all locales. =E2=86=92 all locales:
>=20
> "The B<wctrans>()  function returns a mapping, given by its name.  The se=
t of "
> "valid names depends on the B<LC_CTYPE> category of the current locale, b=
ut "
> "the following names are valid in all locales."

-1 for the reason stated in my reply to wctype.3.

(This is however a more interesting case, as the two items in question
are very nearly grammatical sentences of themselves, requiring only
changes in puncuation.  Doing so, however, would not make use of the
colon correct, as then only indentation would remain to clearly
associate both sentences with the colon-bearing predecessor, instead of
only the first.)

Regards,
Branden

--fhuqtxksucvomtoy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPNlyIACgkQ0Z6cfXEm
bc6Hxw//fr3mZMiDybLFRGG0c3O1ANfken6u5YR24+ZNctRDdkAeCbi460bTJu0q
0FjaT8PfMGUv4nEvpl4atxagdHmqjc0RPkfrziJY22wHWJ8om0kY5WxdPJx9UX3I
/ZHJzwVNSlRM9qBBNHQtekoK3PwAocBg3rwYvuugH8AxhbO8WoZqqnrvdgaPsFek
4w7UYGTFEnMecsbpuImmbrWDuq8Q8IWm5uxW86C+6wcZGmo1o+8PqfYIEWDF62Gv
WHqsHw+UNYU2GKAwUOr2n6hP0KNDBvs8G96+yv1EAjn7NFTZrKph2hF8tfiu7+o6
UvTc//ZLC0BNg2Ih0TXM4mveYuyIF+sBIgjNnH4n9aURpszafxNpJIlGi4k9tC51
okRB5H9cHhwwtO9sf0aQIeMntRFi8C2AOdddcl57jH+xiA4yMGEvfJWWBj6et7g5
DYh26PXFT1kDNfoKUAgn7eD9eDqz5XTXFL5IUUoIauFqraQSm+dbt8YtdZ0ITFXy
nkRzapby/ACfvM/BUrDGfCsU2o4a8S1uB6oQNuj/7UaZuZjUwDlGsZPHzMY2tien
A0BeQ1bbJew7qsYVaUemAsWAaqomEuE6W2Ysd4ooO66pUNHT1fCsBAQSonyyu9Ch
GBEr6ndKyUHmZ40NPwU1d1AZi7/MwnwwasceQh9YL6iYwFIk+6A=
=H+2y
-----END PGP SIGNATURE-----

--fhuqtxksucvomtoy--
