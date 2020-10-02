Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2F1228164E
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 17:14:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388002AbgJBPOv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 11:14:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBPOv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 11:14:51 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB846C0613D0;
        Fri,  2 Oct 2020 08:14:49 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id t10so2244286wrv.1;
        Fri, 02 Oct 2020 08:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ABwDsT29QtmavHQpE6bBGGMN0+FIjSUJx9UUtzSZDHw=;
        b=tb6MIbEqm8IH9i96wJW3fZ/dIxSN9Uxdum/16qDFKsMXqo2+KVqVC1TPoKwkKLd/5q
         /M1ESYNl19nvItaw5P2B6bWAOJ645rRF1miX2KBb7U8xqjcX1/VvzSG9khQw85XK3kpq
         NbeEXaeY4k+RECgkynHlSeWXO8UCVpYrxmwwzZSP4Q7qAu6qt83HcOYH3DFBBD0CfNkR
         15VSyA1/68B+G9Zzs7vLHPLn2+BIVdComn6iDHFX5qBlGz34diFHyUIgh0ZzE24Jko/9
         s1X4JBQhsa5tA1A+BV8bHaemqWRgPmyL/NEoPutVvgxVyQrM0qOm6PpmwwCsMcSbndna
         o64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ABwDsT29QtmavHQpE6bBGGMN0+FIjSUJx9UUtzSZDHw=;
        b=WH5lJuI5E8Ip47szoV0ucktfHpR8lNsrjAunNWoNty0f3DkYvL08Yn6gnblCvYaF3t
         RckgUOunQKM4Q9rVcIb2lXUf6yieS5NgecTY4ZEK5wg7Pb4hTR8fc+j+ossbinTPKIMz
         6wpXaA17Up9PmO9iYUak+PQrchqcnchf7BOLq4sB2f1PembX2MI8F2yIxZrYMoB2oQp0
         hFKLloDlh5c2buRMzB3V/G2JDvNVB/R67ocQE3NwUDgYkI1RS5AmVJy4mhOAaWNJx2sl
         VuA+Mo7MTUM8xnN1vOVswymGjFusGLvjzwm9BeKcHfEjQoMiOTsoxy6sQJisGvHZvdTl
         DHEA==
X-Gm-Message-State: AOAM530C4uOk5OLMiHjNMbHg3lzd5YbPlDcRMfjkV1TeWdbbCMS5Uc+A
        bdiPNskpdF9wUGh1OV6ehEQ=
X-Google-Smtp-Source: ABdhPJyu8lDtRk+hWeOltEon7kghubETIljh4sD5iLYKl+qT8RYvibPEFsBHKh0vba0BsqlcDTRIqA==
X-Received: by 2002:a5d:4f82:: with SMTP id d2mr3592132wru.65.1601651688476;
        Fri, 02 Oct 2020 08:14:48 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u127sm2312237wmu.48.2020.10.02.08.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 08:14:47 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org,
        eggert@cs.ucla.edu, jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: [PATCH v4 0/2] Document 'void *'
Date:   Fri,  2 Oct 2020 17:14:18 +0200
Message-Id: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I'm sorry I forgot to increase the version count.
And given there are conversations continuing in old threads,
you may mix them easily.  I'm a bit lost in the emails too.
I'll resend the latest patch (identically) as v4
(there's no v3, but this is the 4th time or so, so let's call it v4).

Regards,

Alex

Alejandro Colomar (2):
  system_data_types.7: Add 'void *'
  void.3: New link to system_data_types(7)

 man3/void.3              |  1 +
 man7/system_data_types.7 | 80 +++++++++++++++++++++++++++++++++++++++-
 2 files changed, 79 insertions(+), 2 deletions(-)
 create mode 100644 man3/void.3

-- 
2.28.0

