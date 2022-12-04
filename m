Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA41C641FAC
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:56:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230254AbiLDU4d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:56:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbiLDU4c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:56:32 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECEF3FCF7
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:56:31 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id u12so14938773wrr.11
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9wwQ19CC3jx1Tvya64jbzw7I/eShR+bGw2f8lGMzTbA=;
        b=mxOKUKl1d55XLx8dTcjLIXd7gtn3VBlugyQfRfnHPluAWijLySirA/P9WCdaYZ6jkM
         p/Z5h/2I0bWsINV//TzTNgODv33se2m4pohNR8SlltK/AUjArg6aL7pLecAJWp1678io
         kuJC4ZN202rNnfiDoe6RDI7TRqeGiZQYCoirzIpkGXK/SHobER3KAHShecuX7XBMkWIq
         o187YMZRu556SmIgbnlzcVW8t/9IRiOKQATCarUdbofqn/f8C48JLrM3OKfn0aTYn2JL
         ZoJFXM4qTI0Xx2lHuqTsAk8IGQ73rB7fnYMYneqhCuN4UYP6ZIv/ulL36ilQlhfacRTO
         +IvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9wwQ19CC3jx1Tvya64jbzw7I/eShR+bGw2f8lGMzTbA=;
        b=G/gej5AFPj5LCSxbkH09X4lKT911x6K0RkSMFVUw6SH82bgMQ7F19SbOwOtyC4pnKZ
         5gxgRNVUuRNYdvCebIpsMSK1LOUswHd86ViZ2lbVhTJ8xQu1vQhar6svqvcDN24+4GD/
         G2qoTdjnoO46+aj+2s9GSXC1Ce82ag4y7J0Z2tAzEg8ua0/E+HEYeu7cq+98Svp7HZsQ
         qlo04KKfxV7w0B3PAEmdKvZMBTnzU+mdgbJnxvp2osjNrFy/qhsSRex0pNANdERbQPiH
         +q8mNpQWSTwLr3cfhZwFthBZZJ+fBXuKPip9BSL8e4gcw3CW3pni4YH27OasQiWYnrLc
         Dylw==
X-Gm-Message-State: ANoB5pmnYXtJPqagJeEp93tsbBUxoCvVJpan/UwPYu0++bPZ75G+mau8
        yRqC4uTP+feA2tTKiKM2iOI=
X-Google-Smtp-Source: AA0mqf6hrs1esqD/vLvf7upNSmDaj6DLCm2JWya2ra2nj4FPOvITokEc9CG4rQiN/YFUI93h49N1sg==
X-Received: by 2002:a5d:4a85:0:b0:242:2d83:3333 with SMTP id o5-20020a5d4a85000000b002422d833333mr12515325wrq.584.1670187390551;
        Sun, 04 Dec 2022 12:56:30 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m18-20020adfe952000000b002421888a011sm12592450wrn.69.2022.12.04.12.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:56:30 -0800 (PST)
Message-ID: <ddec7869-4000-8f3a-41ca-e9daeec924cf@gmail.com>
Date:   Sun, 4 Dec 2022 21:56:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page cpow.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090726.GA1370@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090726.GA1370@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------opVcbMo0CKgJs5rPAnWTDwlA"
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
--------------opVcbMo0CKgJs5rPAnWTDwlA
Content-Type: multipart/mixed; boundary="------------TAKrs00YZ8QvtzqxcfXS9Hie";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <ddec7869-4000-8f3a-41ca-e9daeec924cf@gmail.com>
Subject: Re: Issue in man page cpow.3
References: <20221204090726.GA1370@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090726.GA1370@Debian-50-lenny-64-minimal>

--------------TAKrs00YZ8QvtzqxcfXS9Hie
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIGF4aXMuKSDihpIgYXhpcykuDQo+IA0KPiAiVGhlc2UgZnVuY3Rpb25zIGNhbGN1bGF0
ZSBJPHg+IHJhaXNlZCB0byB0aGUgcG93ZXIgSTx6PiAod2l0aCBhIGJyYW5jaCBjdXQiDQo+
ICJmb3IgSTx4PiBhbG9uZyB0aGUgbmVnYXRpdmUgcmVhbCBheGlzLikiDQoNCkZpeGVkLiAg
VGhhbmtzLg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------TAKrs00YZ8QvtzqxcfXS9Hie--

--------------opVcbMo0CKgJs5rPAnWTDwlA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCX0ACgkQnowa+77/
2zLxQBAAqW+nEXv7ffK3739i4GJFN5+LX+FTRpitF6gUf8TWexMM61SrZ8P7CDr4
nBymwj+kkDGNzguca6QBIqU2CQGHogC9jjKZqbfWAqIodOlVZd/CraDSIpGCq9Hp
7LAIATbQ/ujwkS+cmEK4+P1Ha8attiIdm7NhBYRphdqb3nLvFC9KN5niZCcNU16X
zOLmkd3VJftkqnGqICeBas5Jvqe4I1I4WA5oVX8cN3PfhELS8Sjk6RFdr3XgVNrT
kGvhRexiDfGBSFz4rfLsG4OMI8RDwcNNuu7JhBl/ceuWBnyoVXUnJq6SQc+6dRnA
iTvHIXD4Jd8oS11YEjo0Xzqf+26G0+xZ+lO+1Bqb/5yvLC88mvMoWLxpCfIkIvca
NIFu3SScUdAHdSTM/dCJqW1/AW4z6RdnRgzs0ZxDjUKCeEUjMcheJZtXdLgKV34C
2kP9ZfoNG55cAT6Thie5Fh3HM/GhgyL3jcF7sIzhLBhpIwhdXesm9LERoYZ9QIeK
/xzfG/CLsmas/15O586HpbfQqNGNa88PHzH6abIBX1KBXeZfrir6tc1lthsDlPQw
HYlLI+6qmjd8sIKmeP5FLnbNkXK6qo+R3FZthmo4dj7Zu+AakrXdsDjRUKvsOBNR
3K+wLTHtV8n+qQsUlw4dNHKaGPxBPXK7/ZxYVXxjXq4GfT0MmRk=
=SsHO
-----END PGP SIGNATURE-----

--------------opVcbMo0CKgJs5rPAnWTDwlA--
