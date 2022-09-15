Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA475B9BC3
	for <lists+linux-man@lfdr.de>; Thu, 15 Sep 2022 15:22:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbiIONWH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Sep 2022 09:22:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiIONWF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Sep 2022 09:22:05 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AF6C74CCE
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 06:22:04 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id s6so19137620lfo.7
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 06:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=NcOSNT5ZdZOpJIuvZTwNEMj09XjQj+45+V50YsQ2j90=;
        b=JAVCEBF5dZvVTQC7Ar6MkzzpB9wn83TYz5PMfLwxFxIKuK05MjDHqCsUA76WiJqzQ+
         fbnxCNWE2WQUoL0wzQvnNP7RmT9NnBaH+803++3632LLyYX86HSKgw0sIjbI7F4QBEyZ
         WialkLCcUoAi9sFuc7/6M+FZTFCHkgbjhMZd28VFTm9uBHR1I3yCgfwlOhmZRgoiJVym
         BFxSwomdiltNAE+wYHn/Po+DdnC/Al9lGhIq2B19Kyuk+72T+Qa8dOcfFyR8dSv83onA
         1sfqwK8hEbmMsAPfBLeG2x6X177bbUMU0sAv+gfXtEoaMMAIE+orM7ZVTwSLHkuc6Xm7
         anFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=NcOSNT5ZdZOpJIuvZTwNEMj09XjQj+45+V50YsQ2j90=;
        b=zKW1wYpBVBDNrexqHZy20OdsOUtNXsiYaGCx9pmofCH3LpUd0BqVQmTuBtnj3vD3UG
         QEJaJEHyLylR6lIjk0tgBjShxpH/RF77EgvDtZtPE1P4l5AOU9//JsgQI+Cmdc0F1KnW
         lbCHcaXQy89SoJxzVeo4E7B4Mcm6n2anayKYP624PAuYlVpRz5xqqzKJGEsl2SDPhcX3
         MUjlYPzGkfVItZQGuUtfIyiQKz4/mz/bKEUqB0EYO8chU7aWHzXyo/1nIn+EMErSCudv
         HqkKOzuuS3J8yO3nP16ZJKdBxK1kcKLyTjxbj6EDQvL9jAuQt7LQ86pG09Wf7hzE1BW4
         dR3A==
X-Gm-Message-State: ACgBeo2yXeBnwS/Yz/GCx72Rk5mON7uSR2JeVmTJntHN+n3c3zfvoJKM
        IjQcyT0gEoHyxCfM5ynYapwS+RlW1R/7/Q==
X-Google-Smtp-Source: AA6agR6qincN9JFVheYhjBVQ9dYtMDRQb4nrvJVcg8ggA6rq/u+xwH/iBZ/xyUEk/HVr1Ui3oT7TIQ==
X-Received: by 2002:a05:6512:10cd:b0:498:fe5b:8ab3 with SMTP id k13-20020a05651210cd00b00498fe5b8ab3mr10594894lfg.613.1663248122246;
        Thu, 15 Sep 2022 06:22:02 -0700 (PDT)
Received: from [192.168.1.104] ([31.169.55.19])
        by smtp.gmail.com with ESMTPSA id z12-20020a195e4c000000b00499b0f5bc0fsm2887498lfi.36.2022.09.15.06.22.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 06:22:01 -0700 (PDT)
Message-ID: <4a6564f1-4994-bb02-2d32-6acd88d1a26d@gmail.com>
Date:   Thu, 15 Sep 2022 15:21:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: Repeated phrase in ipv6.7
Content-Language: en-US
To:     Donald Buczek <buczek@molgen.mpg.de>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <0569b124-7069-cb6a-a487-8d7071f4e0ba@molgen.mpg.de>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <0569b124-7069-cb6a-a487-8d7071f4e0ba@molgen.mpg.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CD1wjUcXSSfhkTbyB5XzvoGm"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------CD1wjUcXSSfhkTbyB5XzvoGm
Content-Type: multipart/mixed; boundary="------------PKab5cNz0kb0VQx245Si8WOC";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Donald Buczek <buczek@molgen.mpg.de>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com
Message-ID: <4a6564f1-4994-bb02-2d32-6acd88d1a26d@gmail.com>
Subject: Re: Repeated phrase in ipv6.7
References: <0569b124-7069-cb6a-a487-8d7071f4e0ba@molgen.mpg.de>
In-Reply-To: <0569b124-7069-cb6a-a487-8d7071f4e0ba@molgen.mpg.de>

--------------PKab5cNz0kb0VQx245Si8WOC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRG9uYWxkLA0KDQpPbiA5LzkvMjIgMTQ6NDIsIERvbmFsZCBCdWN6ZWsgd3JvdGU6DQo+
IFtmaXhlZCBjY10NCj4gDQo+IElQdjQgYW5kIElQdjYgc2hhcmUgdGhlIGxvY2FsIHBvcnQg
c3BhY2UuICBXaGVuIHlvdSBnZXQgYW4gSVB2NA0KPiBjb25uZWN0aW9uIG9yIHBhY2tldCB0
byBhbiBJUHY2IHNvY2tldCwgaXRzIHNvdXJjZSBhZGRyZXNzIHdpbGwNCj4gYmUgbWFwcGVk
IHRvIHY2IGFuZCBpdCB3aWxsIGJlIG1hcHBlZCB0byB2Ni4NCj4gICAgICAgICAgICAgICAg
IF5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl4NCg0KVGhhbmtzIGZvciB0aGUgcmVwb3J0
LiAgRml4ZWQgd2l0aCB0aGUgZm9sbG93aW5nIHBhdGNoLg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KICAgICBpcHY2Ljc6IHdmaXgNCg0KICAgICBGaXhlczogNzcxMTdmNGZjNTVhZGRiYjY1
N2QxYzg3ZTJmODY5MTFkN2U0MzJjOQ0KICAgICBSZXBvcnRlZC1ieTogRG9uYWxkIEJ1Y3pl
ayA8YnVjemVrQG1vbGdlbi5tcGcuZGU+DQogICAgIFNpZ25lZC1vZmYtYnk6IEFsZXggQ29s
b21hciA8YWx4Lm1hbnBhZ2VzQGdtYWlsLmNvbT4NCg0KZGlmZiAtLWdpdCBhL21hbjcvaXB2
Ni43IGIvbWFuNy9pcHY2LjcNCmluZGV4IGE0ZTc0MWY0Yi4uOGZlZmUxMGE2IDEwMDY0NA0K
LS0tIGEvbWFuNy9pcHY2LjcNCisrKyBiL21hbjcvaXB2Ni43DQpAQCAtMTM2LDggKzEzNiw4
IEBAIGhhbmRsaW5nIGZ1bmN0aW9ucyBpbiB0aGUgQyBsaWJyYXJ5Lg0KICAuUFANCiAgSVB2
NCBhbmQgSVB2NiBzaGFyZSB0aGUgbG9jYWwgcG9ydCBzcGFjZS4NCiAgV2hlbiB5b3UgZ2V0
IGFuIElQdjQgY29ubmVjdGlvbg0KLW9yIHBhY2tldCB0byBhbiBJUHY2IHNvY2tldCwgaXRz
IHNvdXJjZSBhZGRyZXNzIHdpbGwgYmUgbWFwcGVkDQotdG8gdjYgYW5kIGl0IHdpbGwgYmUg
bWFwcGVkIHRvIHY2Lg0KK29yIHBhY2tldCB0byBhbiBJUHY2IHNvY2tldCwNCitpdHMgc291
cmNlIGFkZHJlc3Mgd2lsbCBiZSBtYXBwZWQgdG8gdjYuDQogIC5TUyBBZGRyZXNzIGZvcm1h
dA0KICAuaW4gKzRuDQogIC5FWA0KDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvPg0K

--------------PKab5cNz0kb0VQx245Si8WOC--

--------------CD1wjUcXSSfhkTbyB5XzvoGm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMjJvEACgkQnowa+77/
2zKUFQ//X74LdwyB+qGNj6jopMw1bA4UJakgdcNbi49zL/ALIcqIMz9lPkH88SxX
xBFJjKOnNAcAg/kSU0bjaD/jyLhsSTyQbJrY4kgXbcILLYWJlXLPZIf6ICtIcu1T
F9MHFXWa9SC5fNzd/s+Rr1HD5jqSsHZIHfHokRYF79YQdJ9XmtTNB2xb9onVffOy
5C1WJ7jxktKQCJojxviCZwV/x/bPcOJ74oFwK3sbiRv0yJ7BShCnCURmgp3hlGVh
D4eUSbu+EBS/9UsJsIPX8TLH80I6llKpYdzcYm4lWhCSqRddnjCBrgjZ3eZ9FzMr
rBb8GRIyNzfMG9oJWLFi0kmonA6tvDw8b71LExp9vQ3zXjhWu4amhRU8ftvGLWlh
Q0p0f+4ALDWy+wXY9pg7KeSW8M4o/XdF2ogyWLWdigbNiwNz0bc71/nmEeByJGry
zsW5WKRhgDup0YRXCFd2HxDOM9rV/xhzVFSfIapZY+2ia52cER1wCx5LqgJQEnsK
KbiSDcTFvz5GD4GwBfmWJCsxeHBnAjSyVxiq9MdYxjFVmLh40idu6+VEfzNHiW70
rnNbXpEflXXlpA3y7JeSNQbH5jc11PGxq4C4dcnGFkf9yuEJcydbyNJDzGLqditn
gCpesltWQ1TVhE7LYxgt6vuY8rjwmHLVjwj6fM3Uv8jxE4LQ/LM=
=C01I
-----END PGP SIGNATURE-----

--------------CD1wjUcXSSfhkTbyB5XzvoGm--
