Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B7176D28C9
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 21:44:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229998AbjCaToz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 15:44:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbjCaToy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 15:44:54 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B947549FE
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:44:53 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id t4so18307116wra.7
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680291892; x=1682883892;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=U6M8HLSSMjM/DqsTNAPfxzGS68pxmca1NofP8hY81og=;
        b=WNnh3zTKz7euONx9nKXVaIhhYCiHRAPQm8gt9QjlLBr8+PLOpO/5a9Rz45M31yFggI
         hO5bBUMntsDnY92LaljqgCYSBHudwCEQhMWVU/xTFK03jZzOecZ3/FaOyOngoiUz5Su3
         3M3m85rs56haqsOFnSZEZtxhFV2MOAWOK9sTxxAz96qbT7EISzaJXBhUVrnh4adUvett
         T69kExUAodcfSbW8cOMxW8E7KqizUngwic+BGrBOo1cdrf6xGDBQTILy3BkviOjiedFw
         ZH0b26LwOlAAt7587qvRDsfxUtPUmRrXCo/EfYhr9yjEEt6I/LKqqVGakW+y0tvhvC8v
         c8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680291892; x=1682883892;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U6M8HLSSMjM/DqsTNAPfxzGS68pxmca1NofP8hY81og=;
        b=z3Xad7z+F729U/fVcCf4BtxpdjujKuLXKuUH53e82cVCw6XPy8HJLS1qdSpn70jaNn
         NKT+c4LKzM2uFNWOqMVfqcC14FSYtNLgC5NfsyoE8BbAIQtb8L3G2GSkdbK3WtgS+eGS
         NG21ObFS6cFhwjB49z9/pzAPXtg0fmkBboBuLPtjt31w72t57VDx+kbPFmvSr/L00dU9
         0scG6i/nKefOKWxYoB4zMF06cmG1HKSLyHIu0AX0bFPj9snldXm8DXezsjL8rEgiQmFq
         XJsMD7WzYZ+t3Nu5rMVgbX72GF/GSIMDECDO7pCK7CInZ48B+FLeffs8aHOx/86wuDGo
         tD1A==
X-Gm-Message-State: AAQBX9cvCDdSRYtHE06tj5fVQHoc4D2BkHtWyECXmPzvpzwmV/QxvwFm
        zquockdR/f8Zw00VP0T/ntjikPxvY9I=
X-Google-Smtp-Source: AKy350bPjUX65AxsEJq9W5MrtHkoL5Vf02PE/ZlldsS5dnwcHXM5LMBVmsGqAqKwtsOTGVn8Jejv0Q==
X-Received: by 2002:a5d:6a50:0:b0:2cf:ec49:958b with SMTP id t16-20020a5d6a50000000b002cfec49958bmr21253028wrw.12.1680291892158;
        Fri, 31 Mar 2023 12:44:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c1-20020adfef41000000b002d322b9a7f5sm2950797wrp.88.2023.03.31.12.44.51
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 12:44:51 -0700 (PDT)
Message-ID: <c2947f22-a50c-96ef-e61c-6676968c9346@gmail.com>
Date:   Fri, 31 Mar 2023 21:44:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: STANDARDS, VERSIONS, HISTORY
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xq0THQpc070CUsuRdu0EBICO"
X-Spam-Status: No, score=0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xq0THQpc070CUsuRdu0EBICO
Content-Type: multipart/mixed; boundary="------------Sw08PybTe0WXsEBOc0YCSVwm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Message-ID: <c2947f22-a50c-96ef-e61c-6676968c9346@gmail.com>
Subject: STANDARDS, VERSIONS, HISTORY

--------------Sw08PybTe0WXsEBOc0YCSVwm
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

I rewrote these sections.  That's the reason I'm being slowish in
replying to email, and now I'll be checking old mail for some time, so
I may still take some time to review some mails.  Sorry; I hope you
find it worthy :)

Please comment on this recent patch (currently the commit at HEAD) if
there's anything you'd like to improve.  It's a huge one, so reviewing
it would be crazy, but feel free to comment on anything you don't like
about these sections now that I changed them.

TL;DR:

STANDARDS now almost only covers C11 and POSIX.1-2008.  Everything
older goes to HISTORY.  Soon (as soon as the new standards are
published, so one year or so), STANDARDS will only cover C23 and
POSIX.1-202x (2023?), and C11 and POSIX.1-2008 will be moved to
HISTORY.

VERSIONS mostly covers variants of an API in different systems, or
different APIs that provide the same functionality (less often).

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Sw08PybTe0WXsEBOc0YCSVwm--

--------------xq0THQpc070CUsuRdu0EBICO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnODIACgkQnowa+77/
2zLAvQ//buXqWDjcONVki5JQQhz0LVb+0HQ4prWT/lU1+xRtdcww+uQheo+lWJZt
fW/csUsgxvl1KK03cFukK+9n9SBbsi5Gmc1ZRIpTPfQN4+hv4KkOvH7taJsBnD4R
N7Po299k1cpNITidS0AfWb/cj5itNIUgXuU+1q+5iID6MJ0V13c57VOOd1DLRym4
tmi3aixPWDOfEDfDxnbJHiCc8Jbj1eWgxSlDMQTa5cGkrSwW9F5edC7KYa/QxPgs
ZmwGBlxSZ5v3K9dXocY52GWIeuLdGBRmLQyO6nuKilRzER3GKNsoTMrVtNAujEe4
PcMcSXd5guDev7C+adBLSCDXuWX0R7x7oY2wmzctbE1l3uX4jmTiZ7kRUl32JccM
OBuKPdqGke1fEY3f6Dex0NX6OwVRairRfeNi7zlObIBfNwUkdYO2wKBuUxmoqSxv
43yDa3WRq/FWykYNeRO4I045ue7EVOMsrDfdXEDT5y8h1KZJ7hp6QM5LP4URfzV+
eDKr+20oxLaA4hQwT+rB3fgTZFmCiWGzriwfUDPxV0+xqm8wM9pXYsUJhkRKRorU
UdIoq6AO81u5An67JcKHrUf/iHeyTnQY6pGDCWm2vDH7mayJk6mZhJb4+p+GU0sa
2qeod7V6T/K6IV/9VAaomcXXCdwhwpuefDC1FHxGeres/318bgQ=
=yaYF
-----END PGP SIGNATURE-----

--------------xq0THQpc070CUsuRdu0EBICO--
