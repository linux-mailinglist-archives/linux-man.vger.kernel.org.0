Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 354CF73A1DC
	for <lists+linux-man@lfdr.de>; Thu, 22 Jun 2023 15:31:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbjFVNbu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Jun 2023 09:31:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbjFVNbt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Jun 2023 09:31:49 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2CCDBC
        for <linux-man@vger.kernel.org>; Thu, 22 Jun 2023 06:31:48 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-311275efaf8so5625117f8f.3
        for <linux-man@vger.kernel.org>; Thu, 22 Jun 2023 06:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687440707; x=1690032707;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=MW7reYj5cPQgD2zbJ2dPQ5x/vrb0HX3Smre6XZX9Uk0=;
        b=rPaQSEXwmFShs+v9Qk4yZmc6EdCqVzW4fwKm5CBLPvDz6L2fQm6gFxZXZBK614P8wc
         gTlPmI6nf7Jpf8Fz8qLvdb8cLup+Hkhc+72o0rPETBWatxj6kQHjTlLjIIkRVCc1kgja
         aSYgoZtwFD9sBw9R1ZJK9/AYDP4AvLcxWD0hsO1TwVzX8q1s4mKg1fz8n9Ybjtd+3h6S
         XVgPwEmBgcigSApEzOXQmbMxRhJGp8/yva/QaRH8ZPNFCFzCM1rOJlWdHq6lds5VpKwg
         JznzVs4SCdmkQ/TcnPrw6pwftPj6iqCAzAdTkUuj0kYt0X5sKPsXEpcVvlwmPJipEdtK
         kUTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687440707; x=1690032707;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MW7reYj5cPQgD2zbJ2dPQ5x/vrb0HX3Smre6XZX9Uk0=;
        b=BllnWX7vjbuFJbjcvOj461dtd3qGuQgDusVh8vGILjQteZtvOZjQHG6RVQVLLSsc2z
         uCN601BUzF/LACvNPR33JDRV0t5rALFFhrn+kHBDxZhCC1ctXQScVvWyHnUZtGc4hnbj
         6cw//oolrninw/fDRFY3U4ZPmYklV+w/lzgI1dN7Ka90xMsXEu0TRg21pPOC2NVrou6e
         5v7NBZyhmv7gz/YxLmjd+8nuXTTDSQacnr54lt5EZZMDLIXeUYvt2XO8kSo+I5ww2UFt
         jqnv2DLc51XiGcciO16QOHOA+lxXB0OSnwDvw0APzqD24u/JyWOujyHDrhx7meGkDQpa
         VZIw==
X-Gm-Message-State: AC+VfDwdSztLjetpzIRR/ukLkDYjg/xvKBl7MTD/+1vmBKVa40qLirvU
        kTBjYwf8Nv/hN5pvtDPvEqW5GmDG+2I=
X-Google-Smtp-Source: ACHHUZ5QcsD5sez1c1JFj2dZrvCWzhO7/oUGeejAlJEVXPLVSHMRRm+oAX1mnNJiBVUtZQ+zTH7Ppw==
X-Received: by 2002:a05:6000:137b:b0:309:43a2:8e9f with SMTP id q27-20020a056000137b00b0030943a28e9fmr13675628wrz.27.1687440707091;
        Thu, 22 Jun 2023 06:31:47 -0700 (PDT)
Received: from [192.168.0.149] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id j17-20020a5d5651000000b003093a412310sm7091868wrw.92.2023.06.22.06.31.46
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 06:31:46 -0700 (PDT)
Message-ID: <dc425a39-c16f-51b2-6940-2d4815b5cb73@gmail.com>
Date:   Thu, 22 Jun 2023 15:31:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     lnx-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Vacation
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0Q8U0YXpMLOVCBk0igFCiDQa"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0Q8U0YXpMLOVCBk0igFCiDQa
Content-Type: multipart/mixed; boundary="------------H1XhYTTM0o52TgFQGeVAMTO3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: lnx-man <linux-man@vger.kernel.org>
Message-ID: <dc425a39-c16f-51b2-6940-2d4815b5cb73@gmail.com>
Subject: Vacation

--------------H1XhYTTM0o52TgFQGeVAMTO3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJIGtub3cgdGhlcmUncyBhIGxvdCBvZiBwZW5kaW5nIHN0dWZmIGZyb20g
cmVjZW50IHdlZWtzLiAgSSdtIHNvcnJ5DQphYm91dCBub3QgaGF2aW5nIHJlcGxpZWQgdG8g
bW9zdCBvZiB5b3UsIGJ1dCBJIG5lZWRlZCBzb21lIHRpbWUgb2ZmLCBhbmQNCndpbGwgY29u
dGludWUgb2ZmbGluZSBmb3Igc29tZSBtb3JlIHRpbWUuICBJJ20ganVzdCB3cml0aW5nIHRo
aXMgdG8gdGhlDQpsaXN0IHNvIGFueW9uZSByZWFkaW5nIHdpbGwga25vdyBJJ20gb3V0LCBh
bmQgbm90IGp1c3QgaWdub3JpbmcgeW91Lg0KDQpUaGUgbGl0dGxlIHRpbWUgSSdtIGhhdmlu
ZyBmb3IgcHJvZ3JhbW1pbmcsIEknbSB1c2luZyBpdCBmb3IgdGhlDQokcGFpZF9qb2IsIHdo
aWNoIGlzIHdoeSBJIHdvbid0IGFuc3dlciB0byB0aGlzIGxpc3QgaW4gYSBmZXcgd2Vla3Mg
b3INCnNvLiAgVGhhbmtzIGZvciB1bmRlcnN0YW5kaW5nLg0KDQpDaGVlcnMsDQpBbGV4DQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5n
ZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0K

--------------H1XhYTTM0o52TgFQGeVAMTO3--

--------------0Q8U0YXpMLOVCBk0igFCiDQa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSUTToACgkQnowa+77/
2zK/cg/+NPMHBmteQmk5+TqY2HqBqFyAL5O05HS6za4ksaoFUStBY7KVvo0sWjrm
Up6IkF6kqzPO0WdtyVoTxES98ikIWkxhmU0brX/vz7c7f7xarMoHYujn7xjtoqZO
Pi8R568H26d1d1heidVMWISO9UYLQN/r2804qTgCm+/E1fcpSjOh/zeJ0glOQXyp
YlRdFWNRGV4obCKTfIxCQSepabhhfLAgaNyL3+SDnGKTwsrHydRgg9VEUtaBM0CR
B7golVDA8K28l3GMZFi0p6EEOqIOUtFI1EzhlAKhYWkFSNb/6S82kiz7rqREDDZu
irAlJ77rbztdf5Y9O9pi4HZH0Wyi5DKwVyay3ceRyGQBcR+M4wC0WX/WkwJwRzrC
qGUHGADskjxGbYRmle8ctwZYMQfqEjAvH5V9gr+MjTr1qA3TkI83MbO+Sf7kw3Nd
ovB724+eoTXEd5UUeGNA151Tbun3dL58eh6d6Qnxwpgb6cVznMuzyboltDbR9lRV
Tfgp5NKnaFjpoyaNfxn7cqmvrKOZOJukNujp3SAhQGZa/8YhbNUrIbrByTa5vXtu
ums1OSfbMb8nNz/ZiN8YDZrHCmGszD9xw+VWT8N/VWaH5hssQdmbxKebVWAXj19Z
i0tYOb9J+jo257mlhvR25HCMroctbDujsiOE4Rk+VXRLLz8hPhs=
=Ew9h
-----END PGP SIGNATURE-----

--------------0Q8U0YXpMLOVCBk0igFCiDQa--
