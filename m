Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE0DE65911D
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 20:19:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233651AbiL2TT4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 14:19:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbiL2TTz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 14:19:55 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 839BE8FD4
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 11:19:53 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id l26so12214517wme.5
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 11:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=SzcyUCK2nrmzOClhFQeOkaMlYtXngq2heBRpQgq6+Bs=;
        b=emLNmciH5YLEa/wNgJQFMg5Eeeo3aMJ7I5gdsHaQmSYnJxz2/sZb/F6gYIpIuKhO9t
         mFQyslO5fKjuqHbHUejZh7LpK4NeEupHrxdor42CFnGyCHc8sXNa3dcjv7kgvB12MzpB
         9vEvUpmZpp4cekrEApC12ksiBCb/exd8b3LIoUZrxokE7oyDXkQ0c+tZ3K4b9RxGXn6O
         xksmxqxhGB3GbUa30eLZgol7iUeOBXtOATggxnBNifoLoEjkHTrTR0vimx2xWlNA6t7J
         vAsm+YyQmUHOhHS169xL7fxfwIhocmidq3b2wxwHm9Qs58TDjLCMdaGiyhDVN+vNNw5p
         vyqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SzcyUCK2nrmzOClhFQeOkaMlYtXngq2heBRpQgq6+Bs=;
        b=qgKXAymSQo4a9oRaNj3mwY6AASR7jwi7T2tR0O9q3ISI01RBs66rBjVoM6iBlYBbIV
         jBAdOW1ELcFLqy6xDUnmsBbHE4xOs20aT1jXp6HXqqldywBEt1kF6Q+2Jj46tPT1oFsT
         fUtHkludpt/PwW6NNjJvZN+MRNuXcYdk41wZfrnxMUevpxsmURFXT6DtcfjkOhe0hvxJ
         77SC14nCYDhgWpGZGzxb221KOL3c7KMC0hJTT5HMzKRK3bAIsx2xyZGwtivFOshb1V/Y
         EgpKPETPHkvIw6XjADKlwPZOpo67lGLarpGwAf8rHscOP+X5hjuMgY1SejjvJpUEV5VN
         OvHg==
X-Gm-Message-State: AFqh2krWKxe6kCsQdzu23VqNP/XKf/HDKO/g1jCNbrn0+QQeUZYre+9d
        Gya04XAM9miN0Ga6kPcWdtlKsTOt6WI=
X-Google-Smtp-Source: AMrXdXtum6jQFCUxCdJNLjp57JTGFeMDwfWW6Qc4leePazHAiE4Qtg/wWGsCUmZ6eC2ya2GhTE48pw==
X-Received: by 2002:a05:600c:1c06:b0:3d0:a768:a702 with SMTP id j6-20020a05600c1c0600b003d0a768a702mr24182986wms.19.1672341591974;
        Thu, 29 Dec 2022 11:19:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id iz17-20020a05600c555100b003d1e1f421bfsm29613296wmb.10.2022.12.29.11.19.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 11:19:51 -0800 (PST)
Message-ID: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
Date:   Thu, 29 Dec 2022 20:19:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To:     GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: [manual]: rawmemchr(3) and UB
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Yv5BNhlMm5dEFVN6rJ4zdBvm"
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
--------------Yv5BNhlMm5dEFVN6rJ4zdBvm
Content-Type: multipart/mixed; boundary="------------eN3yQtsTCU8zR0ekQ8qhQZC1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: GNU C Library <libc-alpha@sourceware.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
Subject: [manual]: rawmemchr(3) and UB

--------------eN3yQtsTCU8zR0ekQ8qhQZC1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCkkgd2FzIHJlYWRpbmcgcmF3bWVtY2hyKDMpLCBhbmQgZm91bmQgc29tZSBmdW5u
eSB0ZXh0Og0KDQpSRVRVUk4gVkFMVUUNCiAgICAgICAgVGhlICBtZW1jaHIoKSAgYW5kIG1l
bXJjaHIoKSBmdW5jdGlvbnMgcmV0dXJuIGEgcG9pbnRlciB0byB0aGUgbWF0Y2hpbmcNCiAg
ICAgICAgYnl0ZSBvciBOVUxMIGlmIHRoZSBjaGFyYWN0ZXIgZG9lcyBub3Qgb2NjdXIgaW4g
dGhlIGdpdmVuIG1lbW9yeSBhcmVhLg0KDQogICAgICAgIFRoZSByYXdtZW1jaHIoKSBmdW5j
dGlvbiByZXR1cm5zIGEgcG9pbnRlciB0byB0aGUgbWF0Y2hpbmcgYnl0ZSwgaWYgb25lDQog
ICAgICAgIGlzIGZvdW5kLiAgSWYgbm8gbWF0Y2hpbmcgYnl0ZSBpcyBmb3VuZCwgdGhlIHJl
c3VsdCBpcyB1bnNwZWNpZmllZC4NCg0KDQpPZiBjb3Vyc2UsIGlmIHRoZSBieXRlIGlzIG5v
dCBmb3VuZCwgdGhlIHJlc3VsdCBpcyBub3QgdW5zcGVjaWZpZWQsIGJ1dCByYXRoZXIgDQp1
bmRlZmluZWQsIGFuZCBhIGNyYXNoIGlzIHZlcnkgbGlrZWx5IHNvIG1heWJlIHRoZXJlJ3Mg
bm90IGV2ZW4gYSByZXN1bHQuICBJIA0KdGhvdWdodCB0aGlzIG1pZ2h0IGJlIGEgdGhpbmtv
IG9mIHRoZSBtYW51YWwgcGFnZSwgYnV0IHRoZSBnbGliYyBtYW51YWwgc2VlbXMgdG8gDQpo
YXZlIHNpbWlsYXIgdGV4dDoNCg0KDQo8aHR0cHM6Ly93d3cuZ251Lm9yZy9zb2Z0d2FyZS9s
aWJjL21hbnVhbC9odG1sX21vbm8vbGliYy5odG1sI2luZGV4LXJhd21lbWNocj4NCiINClRo
ZSByYXdtZW1jaHIgZnVuY3Rpb24gZXhpc3RzIGZvciBqdXN0IHRoaXMgc2l0dWF0aW9uIHdo
aWNoIGlzIHN1cnByaXNpbmdseSANCmZyZXF1ZW50LiBUaGUgaW50ZXJmYWNlIGlzIHNpbWls
YXIgdG8gbWVtY2hyIGV4Y2VwdCB0aGF0IHRoZSBzaXplIHBhcmFtZXRlciBpcyANCm1pc3Np
bmcuIFRoZSBmdW5jdGlvbiB3aWxsIGxvb2sgYmV5b25kIHRoZSBlbmQgb2YgdGhlIGJsb2Nr
IHBvaW50ZWQgdG8gYnkgYmxvY2sgDQppbiBjYXNlIHRoZSBwcm9ncmFtbWVyIG1hZGUgYW4g
ZXJyb3IgaW4gYXNzdW1pbmcgdGhhdCB0aGUgYnl0ZSBjIGlzIHByZXNlbnQgaW4gDQp0aGUg
YmxvY2suIEluIHRoaXMgY2FzZSB0aGUgcmVzdWx0IGlzIHVuc3BlY2lmaWVkLiBPdGhlcndp
c2UgdGhlIHJldHVybiB2YWx1ZSBpcyANCmEgcG9pbnRlciB0byB0aGUgbG9jYXRlZCBieXRl
Lg0KIg0KDQoNClRoYXQgdGVzdCBjYW4ndCBiZSB0cnVlLCBhbmQgdGhlIHJlc3VsdCBvZiB0
aGF0IGZ1bmN0aW9uIHdoZW4gdGhlcmUncyBubyBtYXRjaCANCmNhbid0IGJlIGFueXRoaW5n
IG90aGVyIHRoYW4gVUIsIGFuZCBsaWtlbHkgYSBjcmFzaC4gIFBsZWFzZSBmaXggdGhlIGRv
Yy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------eN3yQtsTCU8zR0ekQ8qhQZC1--

--------------Yv5BNhlMm5dEFVN6rJ4zdBvm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOt6FAACgkQnowa+77/
2zJKRA/+K21k6ZhdRrV+xH/SLDlGBNEgSFwZ4y6Q8ksOUHhJTs7gi9A/Uhala6wf
m62RTWDVMGpWvvQuVbLfCzQMXhk7aw9GsldwbPvyFRH0gu1wlAEBzIUFzbFWytzo
yhfCmfmu1gy9hYKzR4NkK6flNDVulHxR5aJ9UdIubegBnb7DiDwtylWtpCJIJp70
MWVwZ8tu6LdlljYpQeUCvD0x5tnCjKwcUiHUS8rvFOIVWhlYrooCkIejt3CjIf/X
itHj34l10yOkSccmf46gOfFgic7Eqbd2uENdwGoA+CS8CtfocnG27Xg4OwkL/qci
hd/7cJRolieyurMaxdBZ+9GjsOfjRWJgeYZ4JJltsH20L+NlIZNVg5+WzjUSbro7
PpsQdOTz1IasHIh0ubyU9P/f3qkXGw1AdrIXwk/QWC1Xpd0pV4VsyCqOGH1bav2G
zYFmntptv3LUG5/tHHO5OdFOr6eCyCsPFgvhsKYQqGv9iPz/qA3kZbIPpYxKNR6G
1x7KO2CEBnspWyLT4PzM+G1+TdCPIE+wxqGkOexUXJozmGS+rhT6AsVgecqq1jXr
9gBRjwSYLsdDwLMRMk+5Y1rdlrP3gDZFncTCVFXSPCkm3DM8ZXN83AI2h3lYbMXB
FWSjUVmZTMr1CNOEFHD36LhSp7XU0WOGDOdPpojVzE6XBBCQ7Zo=
=8Gke
-----END PGP SIGNATURE-----

--------------Yv5BNhlMm5dEFVN6rJ4zdBvm--
