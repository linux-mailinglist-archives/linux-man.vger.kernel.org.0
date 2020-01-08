Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 32E63133DED
	for <lists+linux-man@lfdr.de>; Wed,  8 Jan 2020 10:10:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727205AbgAHJKB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jan 2020 04:10:01 -0500
Received: from mail-wm1-f48.google.com ([209.85.128.48]:36000 "EHLO
        mail-wm1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727112AbgAHJKB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jan 2020 04:10:01 -0500
Received: by mail-wm1-f48.google.com with SMTP id p17so1639000wma.1
        for <linux-man@vger.kernel.org>; Wed, 08 Jan 2020 01:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=psvAe+AvioqK8VE8D272MbqPHHr0xb0vuzlRZVgt944=;
        b=I+22hqFND4xEIlzRsEDIGXO+IO3VZTtpI2B1b6r2+vsQ4KiLPEIFbowTF4STKtYckW
         jId1Mb2kCmkZLTD9zNmQXsiInppf+qW8jEdB1ej2BZAJ/+V9zGuJvT2NlXagN/BcHWBz
         Hd2LJtyIf+ywQIt9jPCELdW3Fmb4KPrisVrJ7xijBdtWh5LFs3dv4M23DQFsgM7bGUWt
         rfajZT5MVHpxgQwy98lmwDoqMZb0OPnkoivK992uredjgJ7hiv+xotApTHy8GDYXnFuK
         2kuny7TAIWmBwDpSUJguKZxPTGFRuYwcI7wBQ2zWH756iU3ghjVig2O7sJzXyTMzvx7d
         9MKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=psvAe+AvioqK8VE8D272MbqPHHr0xb0vuzlRZVgt944=;
        b=VuW7f4sCfordW9dQ4O7oCMfXhrFcByUsL+S2BDDdnrdSXByYXMhYLrBsT95sYZJHhK
         5z/l94xb/IjmnLws14Fq6gC1NARZceEAR5BVxHPFBbQTWZ99zAn5DwunqpKzZwhQ14Ni
         5jpWZQibU2b/FEgqeL+pcJf18oV8UQrK+rNPu6+UqnZaQCb4p3vvk8zOMQjycdqE6fc7
         gUiH2d8X1DMM7hzJ0yEKcYP7K+20ubuRrmqESV0NE9Mr5eIjcsdj2FV/jhZbNJhgIzNu
         8zIHEC/S1jL5ronIGYZ9rHfpfF9YOkgQMYNagcU13y9p2nn5woBL4poio3gZtPv2fXP6
         93EQ==
X-Gm-Message-State: APjAAAXBr+e+WLHH+iwDdHyy3Qm6j7zSaduBh8MXLN273ZAsncNFDEl1
        daA+uqnqxrpaJDSYqrkqHaF8ZafezULxgS/ojqC1/Bv0VBcYQQ==
X-Google-Smtp-Source: APXvYqyoGdTjvi3hf/8BtwtDgBl5EGjV1FfJagxkrYjzoKDsZ25GHYir2fZe9A2mBdF6vaMRjRbKBtFdat3dBusNWIU=
X-Received: by 2002:a1c:de09:: with SMTP id v9mr2496958wmg.170.1578474599811;
 Wed, 08 Jan 2020 01:09:59 -0800 (PST)
MIME-Version: 1.0
From:   Ponnuvel Palaniyappan <pponnuvel@gmail.com>
Date:   Wed, 8 Jan 2020 09:09:48 +0000
Message-ID: <CAOL8xrWJgOLpwx97vOvZ7dTvH9D-1=WvzRNi_a4Sd_BbT850Fg@mail.gmail.com>
Subject: [patch] futex.2: Fix a bug in the example
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000cf3115059b9d418d"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000cf3115059b9d418d
Content-Type: text/plain; charset="UTF-8"

The man page contains a trivial bug that's discussed here:
https://stackoverflow.com/q/59628958

The patch was against latest master (commit:
f7d3e6aac109528e6f22f7c9cc5439a6ceeaa7de) and tested on Ubuntu
4.15.0-72-generic kernel.

-- 
Regards,
Ponnuvel P

--000000000000cf3115059b9d418d
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-futex.2-Fix-a-bug-in-the-example.patch"
Content-Disposition: attachment; 
	filename="0001-futex.2-Fix-a-bug-in-the-example.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k552wpxa0>
X-Attachment-Id: f_k552wpxa0

RnJvbSAzYWIyZTlkOTY5YzYzYTRmNmNiY2E0MTVhNmEzYWMxNzYzNDQ5ZmQzIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBQb25udXZlbCBQYWxhbml5YXBwYW4gPHBwb25udXZlbEBnbWFp
bC5jb20+CkRhdGU6IFdlZCwgOCBKYW4gMjAyMCAwOTowMzowNyArMDAwMApTdWJqZWN0OiBbUEFU
Q0hdIGZ1dGV4LjI6IEZpeCBhIGJ1ZyBpbiB0aGUgZXhhbXBsZQoKLS0tCiBtYW4yL2Z1dGV4LjIg
fCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL21hbjIvZnV0ZXguMiBiL21hbjIvZnV0ZXguMgppbmRleCA4YTAw
M2UyYmUuLjAxYjM2Y2FjMyAxMDA2NDQKLS0tIGEvbWFuMi9mdXRleC4yCisrKyBiL21hbjIvZnV0
ZXguMgpAQCAtMTc5Nyw4ICsxNzk3LDggQEAgZndhaXQoaW50ICpmdXRleHApCiAgICAgd2hpbGUg
KDEpIHsKIAogICAgICAgICAvKiBJcyB0aGUgZnV0ZXggYXZhaWxhYmxlPyAqLwotICAgICAgICBj
b25zdCBpbnQgemVybyA9IDA7Ci0gICAgICAgIGlmIChhdG9taWNfY29tcGFyZV9leGNoYW5nZV9z
dHJvbmcoZnV0ZXhwLCAmemVybywgMSkpCisgICAgICAgIGNvbnN0IGludCBvbmUgPSAxOworICAg
ICAgICBpZiAoYXRvbWljX2NvbXBhcmVfZXhjaGFuZ2Vfc3Ryb25nKGZ1dGV4cCwgJm9uZSwgMCkp
CiAgICAgICAgICAgICBicmVhazsgICAgICAvKiBZZXMgKi8KIAogICAgICAgICAvKiBGdXRleCBp
cyBub3QgYXZhaWxhYmxlOyB3YWl0ICovCkBAIC0xODIwLDggKzE4MjAsOCBAQCBmcG9zdChpbnQg
KmZ1dGV4cCkKIAogICAgIC8qIGF0b21pY19jb21wYXJlX2V4Y2hhbmdlX3N0cm9uZygpIHdhcyBk
ZXNjcmliZWQgaW4gY29tbWVudHMgYWJvdmUgKi8KIAotICAgIGNvbnN0IGludCBvbmUgPSAxOwot
ICAgIGlmIChhdG9taWNfY29tcGFyZV9leGNoYW5nZV9zdHJvbmcoZnV0ZXhwLCAmb25lLCAwKSkg
eworICAgIGNvbnN0IGludCB6ZXJvID0gMDsKKyAgICBpZiAoYXRvbWljX2NvbXBhcmVfZXhjaGFu
Z2Vfc3Ryb25nKGZ1dGV4cCwgJnplcm8sIDEpKSB7CiAgICAgICAgIHMgPSBmdXRleChmdXRleHAs
IEZVVEVYX1dBS0UsIDEsIE5VTEwsIE5VTEwsIDApOwogICAgICAgICBpZiAocyAgPT0gXC0xKQog
ICAgICAgICAgICAgZXJyRXhpdCgiZnV0ZXhcLUZVVEVYX1dBS0UiKTsKLS0gCjIuMTcuMQoK
--000000000000cf3115059b9d418d--
