Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B8A42812AB
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 14:29:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387677AbgJBM3a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 08:29:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgJBM3a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 08:29:30 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 474AFC0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 05:29:30 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id w2so1506758wmi.1
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 05:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H0i8y1D/zR5cb0l23tPTZwqC6ebFxq2WnDhGggBetHk=;
        b=dIVkLrVghDIeRZ6o65WVCTVSBv8MgJTc7S8ZOa5eGxtnl+3WFigAempsT/+97Xygij
         ZmZvvpxYITR7Ear2WlCJdCzlkr0zJ1in6wBIaq31aDhirAJFU3qg5iNuSDG9QvM7NfJj
         he3WVtmbBmshr9utRp47ijZemhBUaRiaZxHsFrnri84gKvvB77ueWmI0HVbfuQEqTrM0
         JFSO1If4Akej6LS4uRb3SuNF/HN/mVD9wtEz8N0i1mwxa5ma+flOuR/dJkqazBQsAy8s
         q4gYQzs8jx0d1oJmEDxmQokWJVHMFhc7/HlzQYqWjYGi1vBXvR0tQKkiA/ZU8LxHhngg
         r7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H0i8y1D/zR5cb0l23tPTZwqC6ebFxq2WnDhGggBetHk=;
        b=tqt4PVaMglixMsJCiPN+CAoi4VRRMACcu4U4RhRXDxxjLp7DpeomOzoNgrBsYQsd1X
         /UnnHYrm3iExrE/dXu38lc7YfC5rBisuhT0h/o2oLlzMZF6CzOf5PFMaFSQH+W9zEPv0
         KvJsX3OOR/eF5O9MgBKbnwsYsCeXCd7fhNgZe38uC87jfoUatm0OGC1AaqccBF6WZr+V
         nxW3KNb0Decp6D1f5s3mGca6UclD+JrKYYG/PSyUPy585C17JI4upxq79ckA9OA6U4xa
         kWbo3zhoTuEx+Xp41knGmwQmd+wJNPdp9TTW2pudo5hNjhTT4gJGwDYJtb0IAtt0GvSX
         YwPA==
X-Gm-Message-State: AOAM531Iv41uNVnlZ6NoDz/bVFRA2TF7+KoJiIGauPhlsIxPUoIK/a7J
        CKIW6c8KQeZ8/oZSPPQ/vr4=
X-Google-Smtp-Source: ABdhPJyBiEUiJQMbdMkXcG9BbyCAf6/saJSsUkpK32wAlh0uq6CN8fJX61OkTZ5xAyMo+xNuoRL7CQ==
X-Received: by 2002:a7b:c1c5:: with SMTP id a5mr2585627wmj.187.1601641768980;
        Fri, 02 Oct 2020 05:29:28 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u2sm1829331wre.7.2020.10.02.05.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:29:28 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, fweimer@redhat.com,
        joseph@codesourcery.com, jwakely.gcc@gmail.com,
        szabolcs.nagy@arm.com
Subject: [PATCH v2 0/4] Document 128-bit types
Date:   Fri,  2 Oct 2020 14:28:19 +0200
Message-Id: <20201002122822.24277-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I fixed the stray '"' noticed by Florian.

Cheers,

Alex

Alejandro Colomar (4):
  system_data_types.7: Add '__int128'
  __int128.3: New link to system_data_types(7)
  system_data_types.7: Add 'unsigned __int128'
  unsigned-__int128.3: New link to system_data_types(7)

 man3/__int128.3          |  1 +
 man3/unsigned-__int128.3 |  1 +
 man7/system_data_types.7 | 75 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 77 insertions(+)
 create mode 100644 man3/__int128.3
 create mode 100644 man3/unsigned-__int128.3

-- 
2.28.0

