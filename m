Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D39A3479516
	for <lists+linux-man@lfdr.de>; Fri, 17 Dec 2021 20:49:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbhLQTtu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Dec 2021 14:49:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234343AbhLQTtt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Dec 2021 14:49:49 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 969F1C061574
        for <linux-man@vger.kernel.org>; Fri, 17 Dec 2021 11:49:49 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id o20so11876911eds.10
        for <linux-man@vger.kernel.org>; Fri, 17 Dec 2021 11:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:from:mime-version:content-transfer-encoding
         :content-description:subject:to:date:reply-to;
        bh=UtoF0r4yG8U/T8UOLxn8dacSd49m7zi2Qvhr7fGOaoo=;
        b=BvbANCVSgNuXpYptSMLd0E0kC4v3SYyE35IFTlNY2AuEDalt32NAMj/qnC+3RpeJUR
         YuRwauAq0H4s2K6gK/MI89ZbLty6yBPHTJ+yFWj54RGeGmdsaF367nEKSufc1T3d/cGr
         GG7JXs6Ujca9kzGJfMw+7rmCSBF3dgBl2BqwrOeTbl2ByU24a7zqAZXobeydKbFJaqWi
         Gm7EvUuTTLrbprVkNU5ImwuCjCzLwOn2aGYAUSPUbg+AB0L1duuNhK8AJ0YLBzHNnVqX
         VSWl6KSRdrVUnXRkRQ8jxk5X8Fj5PoI3FhM2HKWneYD5D61ngGj+uwUenDcRbZ28lPUc
         Yr0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:from:mime-version
         :content-transfer-encoding:content-description:subject:to:date
         :reply-to;
        bh=UtoF0r4yG8U/T8UOLxn8dacSd49m7zi2Qvhr7fGOaoo=;
        b=EIH2wKfNBguHGQJSpwnVIn7dDqDbdDRhOEKNeQHPa+k6SYIhkaAiIZFqwp1ZOpTJd1
         9ICmvVilXKgsbBxzLTu/Rcinue1UBUEO+ar+nopsnt69Ab5spDng2/DJRS0/5dPW08K/
         ewLj5P7XZ9Hm8kXJGjJwhHIQ3GoExTDLebMo7LZ7Ld2iqVR5umnnBPKCX0Zgwj2EEzb/
         8c/gFIv2aYa7kWu/xjFrcyp37cZHJFDNk50IcLi5VOPvJrQxOGNc2Og8ecR58gzd0xEM
         y6ViRZP5AP+aRXipIXB1TxZWntHl5UcVlRfOJ2jtwzbPErOL+fW0eI+0z7LMj/ahY90N
         XHxQ==
X-Gm-Message-State: AOAM5333g5oF9V/yDGg7CI6OnBu0FkCu3yEYha6bB5tdUQGrFlv4KYPN
        Iv9Y+xpp5QsiH/P57cJSeys=
X-Google-Smtp-Source: ABdhPJyiA+xRlsEQKrmIcC7GTXezFWVaexQwasoQIsMmyGrGhe+A5Hj/wDnFYxdgjdeZBb8AFRAXoA==
X-Received: by 2002:a17:907:e86:: with SMTP id ho6mr3765827ejc.126.1639770588254;
        Fri, 17 Dec 2021 11:49:48 -0800 (PST)
Received: from [192.168.9.100] ([129.205.112.56])
        by smtp.gmail.com with ESMTPSA id gn16sm3093630ejc.67.2021.12.17.11.49.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 17 Dec 2021 11:49:47 -0800 (PST)
Message-ID: <61bce9db.1c69fb81.41a2a.cc4f@mx.google.com>
From:   Margaret Leung KO May-yee <jogbodo12@gmail.com>
X-Google-Original-From: Margaret Leung KO May-yee
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: =?utf-8?q?Gesch=C3=A4ftsvorschlag?=
To:     Recipients <Margaret@vger.kernel.org>
Date:   Fri, 17 Dec 2021 20:49:38 +0100
Reply-To: la67737777@gmail.com
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Bin Frau Margaret Leung Ich habe einen Gesch=E4ftsvorschlag f=FCr Sie, erre=
ichen Sie mich unter: la67737777@gmail.com

Margaret Leung
Managing Director of Chong Hing Bank
