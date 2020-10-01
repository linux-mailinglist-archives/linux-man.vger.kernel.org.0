Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D37AD28014C
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732299AbgJAOcv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:32:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732020AbgJAOcu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:32:50 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8076CC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:32:50 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id j2so6050760wrx.7
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8PRt3SjpdYYac++OX0WY6GOu97dYGIha/oo+W8QsYYs=;
        b=P0OiScoenml4g/Ct+RCsBp4giT2w1UOowthzYEnnwIk8qYPZ6/EsfT+qwRdiUYCY0W
         8GRKl7+obEtlVdHlhSGZAodbzg0HKL/aJDkyhTU6O7kDxxauI7FtnMHiBmuv2iHntLxZ
         T74kjYX5AnHeUU6m81Vw0AcjS+Lc0vFdcA4wM9yUsBi9GFkOdsytzxJQIk5bhqIpcC3a
         +z+Moy5fFtiMVWgePYDKMeiHLPShnf+zgAiQTJztCD80gRKSI3PKgKl5PyngBNKa6Qxq
         UxaHBAYHCgYHPKMlREZ0BZ9jB6ztvbbItYHuvtPTVYnfboj11EgTFeCkD5CYmZHQz6sA
         9hZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8PRt3SjpdYYac++OX0WY6GOu97dYGIha/oo+W8QsYYs=;
        b=dopil86q6sp5zX3tv0/t46lTowd6kKn9+tALebXs8qVUjvbSnbqyW0mZ6g5C/XQgs1
         IV93qNhQoKAn983rmW+wgAy4QnwSG9D0eequ+cIT6s9o9xGoIyFuKE1Q8WBljPGHVvLN
         9pZZu1enBM70KYEObVmR6P+kFHkMd96iw+OG7SMxzBGcGN6I7MdOgdSTedJwMrxFiTEc
         7BCsTHbDi077himxrmk+e3vjCr23Du47g/W/K7xj2Oy4GlzhieYgKvKsKeGWxi6Wo9V5
         ZxTI6bqHBOocA9EZU+c4RpTlzz6W3l2RtKN6YS6bXh4oXn9rfXVvSyQkdXBmRgK228lM
         izww==
X-Gm-Message-State: AOAM532V0MKOVkNVVrPlTWKWf+LZVln5BftSH8jco4P1A/7yK5pq3cI1
        IVXtHjdYuHM1NARHOLE0bBs=
X-Google-Smtp-Source: ABdhPJz1juDc2mZmIvqAjkQn2fUG+xqOnOE7JbGoGDIDf7n231VMMgYd4JQfEfhyXNdLkI4uJ67QLw==
X-Received: by 2002:adf:a3db:: with SMTP id m27mr9944332wrb.277.1601562769162;
        Thu, 01 Oct 2020 07:32:49 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f23sm5463654wmc.3.2020.10.01.07.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:32:48 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 0/4] Document [u]int_fastN_t
Date:   Thu,  1 Oct 2020 16:32:00 +0200
Message-Id: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This patches are the v2 of the patches 5 to 8 of a previous patchset:
https://lore.kernel.org/linux-man/886f5647-2911-951a-b62a-4f9b1ed8850f@gmail.com/T/#t

Alejandro Colomar (4):
  system_data_types.7: Add int_fastN_t family of types
  int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3,
    int_fastN_t.3: New links to system_data_types(7)
  system_data_types.7: Add uint_fastN_t family of types
  uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3,
    uint_fastN_t.3: New links to system_data_types(7)

 man3/int_fast16_t.3      |   1 +
 man3/int_fast32_t.3      |   1 +
 man3/int_fast64_t.3      |   1 +
 man3/int_fast8_t.3       |   1 +
 man3/int_fastN_t.3       |   1 +
 man3/uint_fast16_t.3     |   1 +
 man3/uint_fast32_t.3     |   1 +
 man3/uint_fast64_t.3     |   1 +
 man3/uint_fast8_t.3      |   1 +
 man3/uint_fastN_t.3      |   1 +
 man7/system_data_types.7 | 157 +++++++++++++++++++++++++++++++++++++++
 11 files changed, 167 insertions(+)
 create mode 100644 man3/int_fast16_t.3
 create mode 100644 man3/int_fast32_t.3
 create mode 100644 man3/int_fast64_t.3
 create mode 100644 man3/int_fast8_t.3
 create mode 100644 man3/int_fastN_t.3
 create mode 100644 man3/uint_fast16_t.3
 create mode 100644 man3/uint_fast32_t.3
 create mode 100644 man3/uint_fast64_t.3
 create mode 100644 man3/uint_fast8_t.3
 create mode 100644 man3/uint_fastN_t.3

-- 
2.28.0

