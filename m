Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB4F3641CE2
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:25:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229638AbiLDMZP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:25:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDMZO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:25:14 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE2E8140B5
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:25:10 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id h12so14711146wrv.10
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+iA2SVZTp4ImlA7UikcjH7mDRy2Hbh5pc4XAhilXNkE=;
        b=c+YaJEp7Og6FwyDPDFgzKsoZt57k71I1MMytVBwJDlIZ5TmWeZaRAp+iTLKTU3TXcB
         gJIOug2V26X8S//FYABG+ZkpmzbaOTHajDQFou3EGwkVAHXJJOh7fOoogEVADR4aFmbA
         UfAv8vcHIVsNhvdLR/eMfPqhH752WG314acQ7KcrDSzv7Y5hYAr3Fy4fGdU7U81LUAYB
         2y+SpnFBYxJ9DdU0pUHMTdpjrjMQgzyce2e65cCmgKPQQBCwlOo9tE4aqjJvK0St0Pcv
         nFyFZ2C4O/zKKuxhLsh04+eCij2qkwZ79tIdW9hXe26yntlHDclhJvIBRI0F0DL/tZZq
         6YJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+iA2SVZTp4ImlA7UikcjH7mDRy2Hbh5pc4XAhilXNkE=;
        b=OVPf6NuQpYTSbykzGjW3jkl4evFZUQRpYecuDEeq7knWcARpmzX7yYkhPMtvZ2UEg5
         aP9mzJFetrJRXHisNC/phSeDyfASi2JXxQiVX4wjpCX5LEgtpIX1y46ODfY/A7HvUkff
         uvPkhtDSeWL4O2U3LATrT073PptkAFffR7+Qfs+FaYDabI5QX7wD4HjKDruGDjHya4xS
         1GIqDTlHcs9oWn/I+EBzq6Dh2VD1p4ubDCUVudzEinaRUd58F3lZNqWAPjp8pHt4UvSH
         /nGjXqrUrBXTlqH4TshqeiQ6jvMda1mCmFZGexUeTljtGt525h4QOh88SJyOq/bQDKt2
         e54A==
X-Gm-Message-State: ANoB5pmdtAu04OTkhHvTrBNgLN46WjKl8A5TFFGEw5vcKUOeBG9Fqqci
        I0TiPFaibbVMNIOPyGwJVpRHMn5WXsc=
X-Google-Smtp-Source: AA0mqf47yUOAcb6MNp0HCN3dycbjDUpdWMEP9ooJeUU2CjHIUOZlJBH191mVtbMjeIklWmrL/W4dyA==
X-Received: by 2002:adf:ed05:0:b0:242:1ea7:2bb8 with SMTP id a5-20020adfed05000000b002421ea72bb8mr16780598wro.163.1670156709422;
        Sun, 04 Dec 2022 04:25:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l28-20020a05600c1d1c00b003c6b7f5567csm23843929wms.0.2022.12.04.04.25.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:25:08 -0800 (PST)
Message-ID: <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
Date:   Sun, 4 Dec 2022 13:25:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090711.GA370@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0E6xlBqa0zOh2QWUm6ja545S"
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
--------------0E6xlBqa0zOh2QWUm6ja545S
Content-Type: multipart/mixed; boundary="------------QdzN6vIX607KZabfzeCUCkhs";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090711.GA370@Debian-50-lenny-64-minimal>

--------------QdzN6vIX607KZabfzeCUCkhs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIG1vdW50IHBvaW50IEk8Qj4g4oaSIG1vdW50IEk8Qj4NCj4gDQo+ICJI
ZXJlLCBJPEI+IGlzIHRoZSBkZXN0aW5hdGlvbiBtb3VudCwgYW5kIEk8Yj4gaXMgYSBzdWJk
aXJlY3RvcnkgcGF0aCB1bmRlciINCj4gInRoZSBtb3VudCBwb2ludCBJPEI+LiAgVGhlIHBy
b3BhZ2F0aW9uIHR5cGUgb2YgdGhlIHJlc3VsdGluZyBtb3VudCwgSTxCL2I+LCINCj4gImZv
bGxvd3MgdGhlIHNhbWUgcnVsZXMgYXMgZm9yIGEgYmluZCBtb3VudCwgd2hlcmUgdGhlIHBy
b3BhZ2F0aW9uIHR5cGUgb2YiDQo+ICJ0aGUgc291cmNlIG1vdW50IGlzIGNvbnNpZGVyZWQg
YWx3YXlzIHRvIGJlIHByaXZhdGUuIg0KDQpJJ20gbm90IHN1cmUgYWJvdXQgdGhpcyBvbmUu
ICBJZiB3ZSBjaGFuZ2UgdGhhdCB3b3JkaW5nLCBJJ2QgbGlrZSB0byBtYWtlIHN1cmUgDQp3
ZSBkb24ndCBsb3NlIGFueSBkZXRhaWxzIGluIHRoZSBpbmZvcm1hdGlvbi4gIFBsZWFzZSBD
QyBhbnkgcmVsYXRlZCBrZXJuZWwgDQpkZXZlbG9wZXJzLCBhbmQgc3VnZ2VzdCB0aGVtIHJl
dmlldyB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgbW9yZSBjb25zaXN0ZW50IGxhbmd1YWdlLg0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------QdzN6vIX607KZabfzeCUCkhs--

--------------0E6xlBqa0zOh2QWUm6ja545S
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMkaMACgkQnowa+77/
2zJi1RAAg+jEqJd7TQACqL6ADPjnOk6bcjHk2pZJSqjrbv6qLOhOBN5O9BezPIww
has6TbHVOki0KfzJnMV3rZwLq1smLay2e9n+aEcd7HsO6upPc9cERMt5ZLyL3Yxv
aREfubvpTxur0cxaj6pLJxzHJqCYrerk62dZA1tjrbTep+f5GyhkhPwGcSXNndP0
+yjdcvla+1VTrZi8z2t0ddwGbfsAqgcRjfKF8tRPPpLIAasBts0Nhc/9WMQIMCeL
Hi/J4EUkUgkgPQJ3pfhkJ7PITWlPX42hFOOFf85nl8sKxsulRoR9xIwVLnp3x5q0
v/3BYSGQhlTDFZfhRwAY7tDXnmB0m8SFKHlFW7j3pGsnAHQrOBsgjFjtkYUqWEj1
Iszpt4iouUX1F3yZLse1Gx/Fe0SuvNsq6TS3tLeXeGWDssOr+vCIVh7ElYiqSlyZ
/999Y7cytbFRrRJPHO+Woo8kj4DzUhnKy7ykI0R6eGVHt/0RkGzEuC5nPk08dGDT
6UQOx99rVpTMJHz13zXw23ANzjRCAYR73WgNSrZs2UN7m7QPYk/fe74zbSUmmR5J
8UqX4oXuYVmC5+LVQ8VoRqk9rnvubScPOD0V73yqAdYMhRhePtmYmrYqp3ht1beM
rKYXOA0tgbnsV5hFXMLzvPc2Bb9iINZWSqTPuKXTbssYAibFB24=
=b/FK
-----END PGP SIGNATURE-----

--------------0E6xlBqa0zOh2QWUm6ja545S--
