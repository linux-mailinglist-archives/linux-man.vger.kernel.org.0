Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88BFD41714B
	for <lists+linux-man@lfdr.de>; Fri, 24 Sep 2021 13:50:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343723AbhIXLwM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Sep 2021 07:52:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343721AbhIXLwL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Sep 2021 07:52:11 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8416C061574;
        Fri, 24 Sep 2021 04:50:38 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id t1so9653180pgv.3;
        Fri, 24 Sep 2021 04:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=6lUr3doIGsTIIAjskt/uD3x/MrGEOUPduVHAnB6V8GE=;
        b=MclJZO/miVbKGfzyEdjSWV3PsQ9uIRKP85m4IaxV6Mh5jOJOzMUqAzuPWRuPK4odHC
         ttaYArp7jpoxL9JGk/yPVQ+HeSFhBOfTIuv7UKID1TxTiwW5T1ZJGg/A44x/5Oh4pzt3
         GLnfSIiLgBTkEglJj76mkiw5C9pAIfEkNjp0wKc7vjq2Lkx+bqYPK1wG7dH/TzIwUsZ3
         UZngz2jPpF776vq58dGRZYongm8fkteYNqK2fJ2M+6mtU/yJ4+Uh3u2u9prVmwkHe0qr
         Au4RAHU6Ql9hO+hXG5xxZTKVZpNugkg86AxsWp9cGi7hVEaPfJzeGOLXRh6EgNZb/6Nb
         r5LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=6lUr3doIGsTIIAjskt/uD3x/MrGEOUPduVHAnB6V8GE=;
        b=oCTvGuofhTcaYr9ZOJLTn3QZ4/s7sHdxxfhpDnpjtMJZA+czh7hS9j+LbQHKjaXKC6
         69qUSgcO4OKbxJRxEjPUjcyXTtenl3hMIOaCUIvyOoFK4vj3hjdTYq1FZr+s4Z3228wT
         uJ8oALWRFyUO/fOCSPQq8Ew6/VW85AUoM8+Uc41nLCgvbZpNrk5/ISCn54anAiAz34ox
         D1R/AOkpUZ+ID/vVV+OBtpOPY0YfOF/BeuNItvc/QvJjx1f90zASYpmhwihEIEEk+LSG
         IbVljZZ6KzNBS4qpFrDlUXsj0bxNPxDrpiS8RK7ePGM90u4yUbc4gaTfKn/Pga+NwSAl
         aDdw==
X-Gm-Message-State: AOAM532EpgmE9EC3mn4VTqyNTiXXkUmot6dq4OP+Hu/9Om1S0P5CsMN2
        3iLCUQEs5tV1/s4IgMfGJW6i0Nkp7iM=
X-Google-Smtp-Source: ABdhPJyL4z0ZuPZ45c6d9Yzqcjxr0Fj3iYSCoYbzU51e9A94b1GtsVmS7T9ic96v/7VrU7af+ZFJRQ==
X-Received: by 2002:a05:6a00:c8c:b0:447:bddb:c83 with SMTP id a12-20020a056a000c8c00b00447bddb0c83mr9672759pfv.1.1632484238529;
        Fri, 24 Sep 2021 04:50:38 -0700 (PDT)
Received: from [192.168.43.220] ([223.227.13.160])
        by smtp.gmail.com with ESMTPSA id e15sm3495138pfc.134.2021.09.24.04.50.32
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 24 Sep 2021 04:50:38 -0700 (PDT)
Message-ID: <614dbb8e.1c69fb81.c952.b816@mx.google.com>
From:   goldfinanceplc@gmail.com
X-Google-Original-From: <info@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: my subject
To:     Recipients <info@gmail.com>
Date:   Fri, 24 Sep 2021 17:20:26 +0530
Reply-To: verahollinkvan2885@gmail.com
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello My Dear Friend,

I am writing this mail to you with heavy tears in my eyes, and great sorrow=
 in my heart, My Name is Vera Hollin  Kvan, and I am contacting you from my=
 country India I want to tell you this because I don't have any other optio=
n than to tell you as I was touched to open up to you, I married to Mr. Hol=
lin Kvan who worked with Tunisia embassy in Madrid Spain for nine years bef=
ore he died in the year 2005.We were married for eleven years without a chi=
ld.

He died after a brief illness that lasted for only five days. Since his dea=
th I decided not to remarry, When my late husband was alive he deposited th=
e sum of $4,850,000,00USD (Four Million Eight hundred And fifty Thousand Do=
llars) in a bank here in India New Delhi the capital city of India, Present=
ly this money is still in bank.

He made this money available for exportation of Gold from Madrid Spain mini=
ng factory.Recently, My Doctor told me that I would not last for the period=
 of seven months due to cancer problem. The one that disturbs me most is my=
 stroke sickness.Having known my condition I decided to hand you over this =
money to take care of the less-privileged people, you will utilize this mon=
ey the way I am going to instruct herein.

I want you to take 30 Percent of the total money for your personal use, Whi=
le 70% of the money will go to charity, people in the street and helping th=
e orphanage. I grew up as an Orphan and I don't have anybody as my family m=
ember, just to ensure that the house of God is maintained also. Am doing th=
is so that God will forgive my sins and accept my soul because these illnes=
ses have suffered me so much. As soon as I receive your reply I shall give =
you the contact of the bank here in Delhi India and I will also instruct th=
e Bank Manager to issue you an authority letter that will prove you the pre=
sent beneficiary of the money in the bank that is if you assure me that you=
 will act accordingly as I Stated herein.

Hoping to receive your reply.
From Vera Hollin kVan
