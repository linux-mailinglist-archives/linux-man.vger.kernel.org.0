Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BB1068B2F6
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 01:02:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbjBFAC5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 19:02:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjBFACy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 19:02:54 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DBC446B4
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 16:02:52 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id u10so4500243wmj.3
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 16:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HXqG5qYVAm9bq5jbteU1tRQKp+5d9oKvKJMN28Z2Quw=;
        b=hmX5a7GUSfmShFlWcHBeW02eVwYsGBeY/0iv3Ll2JGQQDH0p06xzADTGMEcfyiQkae
         gOz1HNAfQ1j0uuV+Teg+Kxsl1gQtijoKRnaauOYGKInZ2TZmQ7fphpLn+XylA3VNatAl
         Ugoivp/Wwwd5KP/gdZ5u3QhyZWHAZBdxkx8qGoIekBWt932bAxg3dg7XGEqxiCw9FQSf
         m2VLGWbkj9riNYhlVpbeTrL7ToOWTHQnmlOT/4/s6rnOnsx5580T4585uis+VZxdmeBN
         mbbGWjvptwqzQMyu9hRRCVQJbzm+9RzRJeJ28dMx3sV3u9UDxqb/mk9h0vfzY6qbCyGZ
         RxNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HXqG5qYVAm9bq5jbteU1tRQKp+5d9oKvKJMN28Z2Quw=;
        b=iadBMIF8AiyiLWLxk1NZxQxrguTQpazT9nUJLqrHl55AxJjNlNCFmmJnn6LGEht8Qc
         oO6vqt1P3ydJm8v65GBQ8jvtIjVePnRRaPHTnNqDHnPlraaPr2ZgNjJFseZ96BDfLShc
         KIzQ8LZJ3UMOv4F/Uv8AEQypUfoDYCMH2eZIsn3AzQwno3p59idn8QwSMtQtasJYerMi
         M+L4Q7l+OeOx8FNraTnN4mFWNM/u8XBN+/Pq80oL5s2dMIL3L+Tsc5Nin3SJekZvuN/A
         ZpNu38WlHnvR959ie0JK1xnR0mQY35/Qk88oaKnBQG/us9f9YrSoKLlFkQ13o/8WXpYM
         D60Q==
X-Gm-Message-State: AO0yUKWvrno0Z4iLdA+CeG+OVYBHG5WwA6IDCCB1OSn1mDlxyqR1TcbJ
        kbWoSCH+AmfPd5fFlzcUmqsS1lgiOWg=
X-Google-Smtp-Source: AK7set/yF+M60M0o4cUH1dnRQA3R4c/Gaxtt3E6IS2NzIOnwtVccUJdR0AMnceDOApmYqAX6UWJCTA==
X-Received: by 2002:a1c:4c17:0:b0:3db:262a:8ef with SMTP id z23-20020a1c4c17000000b003db262a08efmr17692433wmf.38.1675641770666;
        Sun, 05 Feb 2023 16:02:50 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i21-20020a05600c355500b003dc4b4dea31sm9945773wmq.27.2023.02.05.16.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 16:02:50 -0800 (PST)
Message-ID: <0048ff92-dc4a-f58e-ba5b-6aeb80031abb@gmail.com>
Date:   Mon, 6 Feb 2023 01:02:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
 <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>
In-Reply-To: <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------p57IKsDKYkLQdMS0xe2wY3PI"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------p57IKsDKYkLQdMS0xe2wY3PI
Content-Type: multipart/mixed; boundary="------------sLUd3qjxFQMnMjPLqp96JnGc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <0048ff92-dc4a-f58e-ba5b-6aeb80031abb@gmail.com>
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
 <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>
In-Reply-To: <aa33a846-5a32-2464-2dfa-d8785d604f71@gmail.com>

--------------sLUd3qjxFQMnMjPLqp96JnGc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMi82LzIzIDAwOjMxLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZTo+IENvdWxkIHlvdSBw
bGVhc2Ugc2VuZCB0aGUgcGF0Y2hlcyBpbmxpbmU/DQo+IElmIHlvdSBmZWFyIHRoYXQgeW91
ciBtYWlsZXIgbWlnaHQgYnJlYWsgdGhlbSwgc2VuZCB0aGVtIF9hbHNvXyBhdHRhY2hlZCwg
YnV0IA0KPiBwbGVhc2Ugc2VuZCB0aGVtIGlubGluZSBpbiB0aGUgZW1haWwuDQoNCkFsc28s
IHBsZWFzZSBzZW5kIGdpdCBwYXRjaGVzLCB3aXRoIGEgY29tbWl0IG1lc3NhZ2UsIHdoaWNo
IGNhbiBiZSBwcm9kdWNlZCB3aXRoIA0KZ2l0LWZvcm1hdC1wYXRjaCgxKS4NCg0KQ2hlZXJz
LA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K
R1BHIGtleSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0
MUUyNUJCNQ0K

--------------sLUd3qjxFQMnMjPLqp96JnGc--

--------------p57IKsDKYkLQdMS0xe2wY3PI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPgQ6kACgkQnowa+77/
2zJQShAAhO3hcChuT5qNW3p8BtuaYuknqh+hyD2jo+ejWpMaOtQmOaDn3DXaT5mZ
3AxttYqDDEhpnoEFhQYNpNg8bAArNcoiFuyXD+Eg+qpLm+Bw1Pv1VcJfpVTPu25c
0rlveHr/MTUKPupmg2bV2PReJGshJzoMLbnE5yf9wSSnpZ5rt1xHXnk21/1pKq/I
xPP0sYz6KgjmNjHYrdFddBMU4QojZs3yeOKsWNlgPox0QyroRDnVnjD0MyT0d5x9
t6eiK/jx99/prefL7jKbt4gyHS/kuyQLRXIvITjBO0t28viSp289yMtyPVkNLjIV
RhSNu27YOxBBR5V/WpnkLT+wwuRa5qIlC6BsuxjZhF1cEMPX3/Vy8gxHGqvArJbG
KmCtl+58az+ip5rvXV1bJou9BukQQBff0GbP2Bed9DR6t4Ezo3rG5Pb7mDdwpT+K
aCV4G+u1Dpgtk1QK0idcF5KLcFG8CcjRcKa3HEJjd8IYZIdJXghoLz0kalCmK7ny
VCXpudaE1pCKRmHnKZ8BEg6GTBJd1KtoCrmR5QR7oVE83n/fL2OAD0/vI+PxKUTp
0UH/7bZB/2MHstJ/NlU2fQjdYAA+euBi64fj2m9hSIe+DQ7BPCSJ96dhJ+Ag1/6g
pW6MfBQ4qrVa8rr3K8aUa0ODpyCS2CrekWpN/hPeTGlj4Ffov8w=
=H7uc
-----END PGP SIGNATURE-----

--------------p57IKsDKYkLQdMS0xe2wY3PI--
