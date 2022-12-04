Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FC3A641F6C
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:13:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbiLDUNK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:13:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbiLDUNJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:13:09 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66E0113E13
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:13:08 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id bg10so7363946wmb.1
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=11k7JSZsvuno3/vUxTr8TAhDTg8EaAu8VGqaOoxfPIw=;
        b=l2ZSjq3UoT2yYTo/XqUZ3hMwF2X04kvdb114iUx4N3Yzs/5afTu0EajpDdbrwJJnVS
         TqTKir2XsQ27nIu9pbKIA1gPeTK14SrJwXdHab8F55fk9S+rswUFH4Eeu1Sx4IYmsnx7
         RbUUzF3xuirbhTFmJZQxD/ZtvZweNdvhbauSi4x3fa11c5d0X4R/v4XmZbXIZ3KPLyXu
         UA9g3IpWp4puSN5dVMF1n0ZF+b44U9mZKGKNnDUn0YpLSYPKOcd3VZG3O8QVndX3h/m1
         IxyOBh7NtfHk41cdb15SxSUUdKO7hgh3HigkdIOiWuaP3DvHi0cAdlkjkO3Rj7Q6fUOZ
         TkLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=11k7JSZsvuno3/vUxTr8TAhDTg8EaAu8VGqaOoxfPIw=;
        b=eRV2jmHnQ14Rx4P16aIImIdyQxLZzNFqH+1B/psW/DV200m/SA3hwqS1iq4D1N1y+p
         1S9H1n1HLfxtnWnHy0wSj76l/g9XdLnCAMRD5Rumh5393OmdsFfiqmnDh4RrFlHeWhGz
         bnzDI4U5cFLhFU+jXWx8A5rQRIZQGD1PkWwOhcuknQzFCxGQMuAGKu6wkdbLz+vNh5z0
         J0OeCPBnN3P2iXlpanHj+9sF9ltMHKGcXRLmTdS3D1F+f0YbmbAPFVEn1XZA54C2sc/I
         rwqVOYL6w7b7yP4n7FzWubLcuFzuCV8Al4iPwmqw2n0KlHxn0ZZJxLhMHVhJ95nsZFv9
         7T2g==
X-Gm-Message-State: ANoB5plb6+bOLJSp/Ahcw1/x/okEJyv/oerx49rgOeMCc+KLndvxLx2q
        9dQd74QWvqCmLJb9fO+v/Tg=
X-Google-Smtp-Source: AA0mqf7MIiIPZ5tmTXT8Yyb81O+SQtqkLafODcQUUL9AtgEh0gO9yEjA/oLTZd5uDHH4ExzIiByydw==
X-Received: by 2002:a05:600c:468c:b0:3cf:7c81:caae with SMTP id p12-20020a05600c468c00b003cf7c81caaemr52630314wmo.135.1670184787038;
        Sun, 04 Dec 2022 12:13:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o35-20020a05600c512300b003a3442f1229sm20864151wms.29.2022.12.04.12.13.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:13:06 -0800 (PST)
Message-ID: <11073f56-1059-abbe-172f-98513dcc745e@gmail.com>
Date:   Sun, 4 Dec 2022 21:13:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page uri.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090719.GA902@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090719.GA902@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------t90yffNxk0PLJn0W2StvFFF4"
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
--------------t90yffNxk0PLJn0W2StvFFF4
Content-Type: multipart/mixed; boundary="------------KKoeoim00ZTqPfUyJb96s4ON";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <11073f56-1059-abbe-172f-98513dcc745e@gmail.com>
Subject: Re: Issue in man page uri.7
References: <20221204090719.GA902@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090719.GA902@Debian-50-lenny-64-minimal>

--------------KKoeoim00ZTqPfUyJb96s4ON
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIEdvcGhlciBzZWxlY3RvciBzdHJpbmcg4oaSIEdvcGhlciB0eXBlIHNlbGVjdG9yIHN0
cmluZz8NCg0KSSBkb24ndCBrbm93IDopDQoNClBsZWFzZSBzZW5kIGEgcGF0Y2gsIGFuZCBD
QyBwcmV2aW91cyBjb250cmlidXRvcnMgdG8gdGhhdCBwYWdlIChKYWt1YiBXaWxrIGhhcyAN
CnBhcnRpY2lwYXRlZCBpbiBkaXNjdXNzaW9ucyBhYm91dCB0aGF0IHBhZ2UgcmVjZW50bHks
IGhlIG1heSBiZSBhYmxlIHRvIGhlbHApLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4g
Ikk8c2VsZWN0b3I+IGlzIHRoZSBHb3BoZXIgc2VsZWN0b3Igc3RyaW5nLiAgSW4gdGhlIEdv
cGhlciBwcm90b2NvbCwgR29waGVyIg0KPiAic2VsZWN0b3Igc3RyaW5ncyBhcmUgYSBzZXF1
ZW5jZSBvZiBvY3RldHMgd2hpY2ggbWF5IGNvbnRhaW4gYW55IG9jdGV0cyINCj4gImV4Y2Vw
dCAwOSBoZXhhZGVjaW1hbCAoVVMtQVNDSUkgSFQgb3IgdGFiKSwgMEEgaGV4YWRlY2ltYWwg
KFVTLUFTQ0lJIg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
Cg==

--------------KKoeoim00ZTqPfUyJb96s4ON--

--------------t90yffNxk0PLJn0W2StvFFF4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/1EACgkQnowa+77/
2zKadA/9EiqTQsiBI4LeGvBZs8dVQYIaBiMRHSvRASCsjSZ3vXeknhCoVqnik3ep
Vz4fT4wM+JHEvtfJzUO2EhAw4L+8XKMcn+96WAl6wXP2OVQf93n4hpZMFpjjAiAM
hm886u9Xz7kNqPE0vQNlDDkgVYfAIBeHItsy+r876RhRbx+Bn3OBOYsBMQ2Aczjh
LSj+ppbup/kg5xJV8vNOk2iqeGNzSiwX56Uhw5SpBt8ETAaMxfy0ZvXxFLjYVItk
bTkVaUQ989kaz7Rl4p4k/ErOW0S7uo7Ee8iaZ7epeZ7uilPu6YrUeuUodPylmEBk
Ov8eHy158u9uNMWi9jmNDbxiUeo/ghY7II57jcspV73bzhXi90qNQXoBdje15iDi
Eefg06V2fmnIrkgGfKn76+hHNHE/Mn6e2ICXXy/Mh8OCZj5AEWlNQLPQhdRxB9LH
pdBiiHm7ipXEZgLOspDnymun+0I/+p+PpnAOBZnxn5DM7JqzGkHe6J8oCci3ME2a
b70Bl6+2E+bprarSUmPwDtAbJ1CSaKSl4HWI81dYpV0Xm18KDPEjIAK65ZdEujU5
ha9y2y4+HyWghbjV15dVxiZjTF7JKSO4BWqqyT5JrQXp7/a+k10KbEnx3FqbFLGi
8liIzuQixTcoabwgNWQMBgZK78c3GTLM/hI+y1dzFBdn+iBkxZM=
=3+zA
-----END PGP SIGNATURE-----

--------------t90yffNxk0PLJn0W2StvFFF4--
