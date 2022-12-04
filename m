Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 178E2641F77
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:21:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230117AbiLDUVP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:21:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbiLDUVO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:21:14 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CADDB62D6
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:21:12 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id bx10so15887780wrb.0
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fQvlN7Hl1p5I5hKn79Ft/Y+IkTYZXcaIyxX6SwIlg+8=;
        b=qrNhIr1CHdfvxOY5/p2N5RksA56Iv80cg7VS+PXYKiEE2E+pR+keGXlI/3SxqDOKoR
         t91Nb5HobURqNxpqkiOmyZXdRedIxZ/hRY8YCOjiJhItW7WmLbzraLxeY61Sfjc6kX5y
         BhVpeQyePK3axDDuGMJViQJKYblDZsIkKkS+PUucg62dsY9L50h6/l3nb+2+vH8ii+wR
         1/EgbN+Ha5kcTwKD4zX1J+/nQD/Xm79v2zMPi2vL1MC8IspXMdqbiyh6glsrbcBClE5v
         h1R9rX7nF6oMRw/N4p70rje/e8y+wgT1PGdh5N6IfFK0bCiJqSaSi1YabAhQSF/CH6Wz
         kY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fQvlN7Hl1p5I5hKn79Ft/Y+IkTYZXcaIyxX6SwIlg+8=;
        b=g3REvy03mIZKBxh3efnyPHK7bbEXT4H1sIjtIJ+TSqGKY3Ik6q+1slwQfc00TR9HBK
         fImIAlmpd+37sBxkFFd6/jD0oDxwUmDocPETl8Db9+Gf/3NbO9K7kvnF1v6I44OiYAtS
         G0gF8wM1gU/AmBWvTfnItMj1oMVfZLtuinSzSHpVHBwymoEFD5of4PnbSWBtXOJ7h5S6
         J0k02sJUmVSXdyepg1+2/dpcyDx2yrNvK9uTFoKnSXPR/UmNzGKUfiJLWiy7uSnEdyci
         oxLeqCPJGW2vBajKBYjenHUx2uLaLg84gEnnDuHoS4KLG4a/U/zTjykmm3eydXetXQAm
         TYxA==
X-Gm-Message-State: ANoB5pke68sOiYEIOPRwoLaoxJ8r4l/HhLJre6VVWtb+9tj8lAkKeLS8
        Ga0D2gWD8Z8YJn2SxMgbF4Iq4RsdAzY=
X-Google-Smtp-Source: AA0mqf6JGpa7Cwo7bhFucdAOuUvUzaMWug5EYbFRebf+n4V6O0RNRu0cF7COcTTD3q9/IuZwCOtsCA==
X-Received: by 2002:a5d:5e8a:0:b0:241:f227:9c2b with SMTP id ck10-20020a5d5e8a000000b00241f2279c2bmr32710410wrb.106.1670185271214;
        Sun, 04 Dec 2022 12:21:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g8-20020a5d46c8000000b0023662d97130sm12473288wrs.20.2022.12.04.12.21.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:21:10 -0800 (PST)
Message-ID: <fe8dc7ba-4a0a-eb75-f70d-89a70ce04b9a@gmail.com>
Date:   Sun, 4 Dec 2022 21:21:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page uts_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090721.GA1077@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090721.GA1077@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uieHv0vbR3pWUYcbqW6X74cI"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------uieHv0vbR3pWUYcbqW6X74cI
Content-Type: multipart/mixed; boundary="------------IlTo0FZyeD0iM6eIz3YGcP0k";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <fe8dc7ba-4a0a-eb75-f70d-89a70ce04b9a@gmail.com>
Subject: Re: Issue in man page uts_namespaces.7
References: <20221204090721.GA1077@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090721.GA1077@Debian-50-lenny-64-minimal>

--------------IlTo0FZyeD0iM6eIz3YGcP0k
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIGRvbWFpbiDihpIgZG9tYWluIG5hbWUNCj4gDQo+ICJXaGVuIGEgcHJvY2VzcyBjcmVh
dGVzIGEgbmV3IFVUUyBuYW1lc3BhY2UgdXNpbmcgQjxjbG9uZT4oMikgIG9yIg0KPiAiQjx1
bnNoYXJlPigyKSAgd2l0aCB0aGUgQjxDTE9ORV9ORVdVVFM+IGZsYWcsIHRoZSBob3N0bmFt
ZSBhbmQgZG9tYWluIG9mIHRoZSINCj4gIm5ldyBVVFMgbmFtZXNwYWNlIGFyZSBjb3BpZWQg
ZnJvbSB0aGUgY29ycmVzcG9uZGluZyB2YWx1ZXMgaW4gdGhlIGNhbGxlcidzIg0KPiAiVVRT
IG5hbWVzcGFjZS4iDQoNCkZpeGVkLiAgVGhhbmtzLg0KDQotLSANCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------IlTo0FZyeD0iM6eIz3YGcP0k--

--------------uieHv0vbR3pWUYcbqW6X74cI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONATUACgkQnowa+77/
2zI/gBAAnq/8xhwiq4lfxmtrWcHd4GSD9nRpAPNWbNGwuATgPRu76456krMpczAx
s1jZT0O8g2AQ96BI9+tDq/rFsA6R9HNAruPuf/xUSi4AgFYAzTyBkDc1jQMg7yhZ
ipEmOXGCyT1qpt/HIeQN5nF3B84z9Ubn5W2/0Yi3RznLKGhp5NwjLSeVrO/4FWYq
5mYK+jwJcJodWX8r0Be3s/S4Zf2KvmrcvOBiZj+13R1kD9Fi9Z21/TSgcRgAugLE
4FEM/15Thv3ogZPz/HT0MkndNHpJ7Bs8ej9HTduu5nORJNaP7VmiHUo8Dj0Qslbs
aowb8UfRB0eCGAiuFeoYb8v/MaYVoQ1ILAIX43WOC5b8hmnYHguzBRbAwTTGdQDT
Mf+XVl96drDnDNNMPMJAZKz7NVLbGmoW4o9YYaVVZCe7jBDXKEEDZWW35iPiYfPi
rZZD6rQXHJmtOUwPKZ0WcLnQFk0VPdmsiPLCO+Le7uBSau1RKuTxV0o4Lulh7aT4
x7IjyHoLEFLw1JmcdUWMQ8K695FP9cAdNHYVq69UKZg15YDRLHQ5UnHN+wtnV9tH
V7UzsQHIafJ0BXcLXaSZDYjddbt3CZFf4Qdg4iCsHd4wjgqgAOA9oMPQGPOeRWV+
WIABPIRqUH4IqHTZYH9eOvrOWsqcO59hW06nweHahQxQM/ags4I=
=dhhr
-----END PGP SIGNATURE-----

--------------uieHv0vbR3pWUYcbqW6X74cI--
