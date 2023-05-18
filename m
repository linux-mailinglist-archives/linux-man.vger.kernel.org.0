Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AC3D7087BC
	for <lists+linux-man@lfdr.de>; Thu, 18 May 2023 20:23:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjERSXS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 May 2023 14:23:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjERSXR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 May 2023 14:23:17 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA1D2BA
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 11:23:16 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f42c865535so23800535e9.1
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 11:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684434195; x=1687026195;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+E/vYlfgoVgd6Pl0/WIWTOlf+MWudUDKsWdUGX1JD70=;
        b=Zxy+QEVovYW0oLHRSIxODKcmfElLscbwhs3ZiSESu84SgleUETCUKh0UMJA3qsFYcI
         hZj79tt9mLgSo7hAe39FmjMzWQSf7m4d7cjLqGHI1rHcf8DqJxkO30baKnfd2LQCZoIJ
         1CQoiJALcvlk4masLoQ4D2AJOS1zUb9ModS0OGZy4Pmj5LME2ly9e37qivucmwqVIDy/
         SD4RUVO12KyQCz1JyHqLzC6b0QEAdv1TmwgP5scQEyn84rLKSs/PErKe5QC/arp3aIXO
         e23moCEoT8l9M+XyyLUR0Y2VoZx74sSUjhpGdPfcutSfDpkSHHsCXtbXp3C2X41KxhKY
         u2fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684434195; x=1687026195;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+E/vYlfgoVgd6Pl0/WIWTOlf+MWudUDKsWdUGX1JD70=;
        b=PIyqprWfsYsTSV7W5tqH6HdIPifepPpTCu0jQ6EKa8EFs5B/Ws9crK9speKYjHBIWE
         XpjtBlbD1lQMIY+/HfM+/ktk7ghQEdfC3SGplGEyZfCzKw+B5dplPIesCPtyAn24WpUr
         VUsVdBSxJUWLwwS4W0449HfB67XXhEiitZQi+5uKf783o0Z7bUhUEy8SBVRwoJdczojm
         iGU+BGZn0xLrikmaPY0csh+qJMNML1IrtZqlTHe6B0akV4/DMpV+mN9PFja7LvkMgVcB
         XSZHDXT/uw49N6p8YNAioH3m22nCB4MzwoaOKfFeWgsUlR3dyKkMzRrnt5y9K9t1jCKM
         wswg==
X-Gm-Message-State: AC+VfDzQPVWldvzcDAyMJ9Lt2t9K5q/Lb4NoxLPl4ghnTHDHhy/zTWfC
        1560BwH6snYru6lqP2I/JrQ=
X-Google-Smtp-Source: ACHHUZ5WPae/qvCPTis+5E1JFEjRomR3qlGYl2Xp10SxsOl5PBjgs7pMoAHj915Y9JdG6l/RsmO2Wg==
X-Received: by 2002:a5d:4611:0:b0:309:4a41:9eab with SMTP id t17-20020a5d4611000000b003094a419eabmr2359759wrq.56.1684434195132;
        Thu, 18 May 2023 11:23:15 -0700 (PDT)
Received: from [192.168.43.80] ([37.29.170.63])
        by smtp.gmail.com with ESMTPSA id b4-20020a5d4b84000000b003047ea78b42sm2853122wrt.43.2023.05.18.11.23.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 11:23:14 -0700 (PDT)
Message-ID: <703ec07e-dd2b-bbc6-f1bc-f495e53b764f@gmail.com>
Date:   Thu, 18 May 2023 20:23:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     GNU Libc Maintainers <debian-glibc@lists.debian.org>
Cc:     lnx-man <linux-man@vger.kernel.org>,
        glibc <libc-alpha@sourceware.org>,
        Xavier Leroy <Xavier.Leroy@inria.fr>,
        Carlos O'Donell <carlos@redhat.com>
From:   Alex Colomar <alx.manpages@gmail.com>
Subject: Manual pages from glibc-doc
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NBnWWl5vzVYXeRG1DwaRyExC"
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
--------------NBnWWl5vzVYXeRG1DwaRyExC
Content-Type: multipart/mixed; boundary="------------FwA6l2jR7mhw9gilwAr70pDH";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: GNU Libc Maintainers <debian-glibc@lists.debian.org>
Cc: lnx-man <linux-man@vger.kernel.org>, glibc <libc-alpha@sourceware.org>,
 Xavier Leroy <Xavier.Leroy@inria.fr>, Carlos O'Donell <carlos@redhat.com>
Message-ID: <703ec07e-dd2b-bbc6-f1bc-f495e53b764f@gmail.com>
Subject: Manual pages from glibc-doc

--------------FwA6l2jR7mhw9gilwAr70pDH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gWGF2aWVyLA0KDQpJIHNlZSB0aGVyZSBhcmUgc29tZSBtYW51YWwgcGFnZXMgaW4g
dGhlIGdsaWJjLWRvYyBwYWNrYWdlLg0KTW9zdCBvZiBnbGliYydzIG1hbnVhbCBwYWdlcyBh
cmUgcGFydCBvZiB0aGUgTGludXggbWFuLXBhZ2VzDQpwcm9qZWN0LiAgSSB3b3VsZCBiZSBp
bnRlcmVzdGVkIGluIGFic29yYmluZyB0aGUgb25lcyBwcmVzZW50DQppbiB0aGUgZ2xpYmMt
ZG9jIHBhY2thZ2UgaW50byB0aGUgTGludXggbWFuLXBhZ2VzIHByb2plY3QuDQoNClRoYXQg
d291bGQgcHJvYmFibHkgcmVtb3ZlIHdoYXRldmVyIG92ZXJoZWFkIHRoZXJlIGlzIGluDQpt
YWludGFpbmluZyBhIHNlcGFyYXRlIHBhY2thZ2UganVzdCBmb3IgYSBmZXcgbWFudWFsIHBh
Z2VzLg0KDQpXb3VsZCB5b3UgbGlrZSB0aGF0Pw0KDQpDaGVlcnMsDQpBbGV4DQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmlu
dDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0K

--------------FwA6l2jR7mhw9gilwAr70pDH--

--------------NBnWWl5vzVYXeRG1DwaRyExC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRmbQgACgkQnowa+77/
2zJYlhAAnZ3EDsyBs6xcMKMD96BijwP4MLwg79thZ3Si4/c4iPbFIOqc9YOuzarT
Lby/yJ55ozpOcDUaTdHQJ5GoYEJs6C8X7pMVTn3QAzqm+Q+fxwLc6MhwHUPHQ9rI
+W53jhZGDgcIlcni6Rx/p78DhYQIw9bkLNXzKB4BV8tqg9AwRzIDSZ4AvjSVIZRU
fZJ4yby6z0StkIDgh96yi0l853f/rhgi+AWfJHTxH1A3Iilm/xVf3ZagYjY/G1EN
jg13PJCT4P0GOfq4Tk/O7dZuQazZv74wJwZSGr7VqroN62CaDFbIgVIu9xxxWz7t
VzmPpjcQmNTjlNnrDCjEnunDGquLPiySDsrGGpU3B7G1qIbEbvTbo1ogy+l19F7m
WuFNrQfSutAceUEK0bj/rbDyDBNOY0svyaPF2RX+V5GejiDV9kSPc5QoWR+O5ZL5
7qzQsr4Apz/XhH8p73qVTKsIVYfGovTLOu8MzH062Ww8uhzqI75yry0y71xBDA0D
GNvIxCoNLykdmUSX5/fqQcYBC4N57A1oN7YoxR1FQDEPlIscDPQe61r9tU3diZZE
/kSNFvQS/gWGteFbJKuJnKVMN7mMZ6Z+iu4LMKbAHCbWGhPdGQRNgOGFRGZ3nbip
HNvxSdfOCwr6Iaimt0kWG1Q2ujogG0s+E9FDEtiznnpdkcZ5HJU=
=zwiX
-----END PGP SIGNATURE-----

--------------NBnWWl5vzVYXeRG1DwaRyExC--
