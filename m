Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBF457E2E8E
	for <lists+linux-man@lfdr.de>; Mon,  6 Nov 2023 22:03:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231364AbjKFVDZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Nov 2023 16:03:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbjKFVDZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Nov 2023 16:03:25 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82E0F103
        for <linux-man@vger.kernel.org>; Mon,  6 Nov 2023 13:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699304554;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=5XNhKnQs3l4ZHY3GJE/V3ZzjXSn6athX9qYEJTSjuqQ=;
        b=X60QmVMP+NGa8jKl3CRstdsOO/90xxkar+2zCuGkWOWkv/p8kWPed2s9qXO8F6RnJI1ysk
        gKxGc9DjbCRAkeEbn5s7y/kfuRekOS8juRon1Xt6JAbHEeR2Qxe44uYEstiDUnlakPEMh3
        bWimOFR577dS0fFvRMWZxdmTRQO+ACE=
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com
 [209.85.128.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-35-rBqR4FCtMeeDLLz0yZL-jA-1; Mon, 06 Nov 2023 16:02:32 -0500
X-MC-Unique: rBqR4FCtMeeDLLz0yZL-jA-1
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-5b1ff96d5b9so68173017b3.1
        for <linux-man@vger.kernel.org>; Mon, 06 Nov 2023 13:02:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699304552; x=1699909352;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5XNhKnQs3l4ZHY3GJE/V3ZzjXSn6athX9qYEJTSjuqQ=;
        b=ZgMSkI5NVWE+z2QIhzztrcr7DXwsCwSDxAFZZmEKesjqWr9n/5HBpTCo+z9rC7T5gd
         Yz+KTNT8kmu5+7uZwRxzI0dviJgK0A7CVDBqMpFY8hA4sTGse4tZiUXizPofnKvzcscV
         x8kwqCH9tDB7mdKOhjQ8PTnLlbVPehaP+6Q3gZlRwKY+P/rkhWE0ObzCa7KWDpIjxZpJ
         MdDdKbDV52udxRC8byH4ngaUN9VL/ZQEqdMNESM80LNml4h5OPdXfPsnO6SpgK3qtC8I
         rgPUo+jQc2ovfiGsRpW2ZHTuGW0u8rVgr6/Gy90k9z+51rJrljztCVHpJVzhrhzLFkI5
         2EeQ==
X-Gm-Message-State: AOJu0YxDegPtZQ1G/A5BUKNHPtdG5QVNPnZEmtjcxbkpwwAAo9oGTg1m
        hLeDN/S54rT+eAIds6JeYXLH63Sp9q3x3jLKLSGXVSksWu+eTiSqB9Aqj13WT+NufJq5Tkp+U+C
        pDmF/l7DBgzxqIYPouIypG16W1uh6p9ngPIPF
X-Received: by 2002:a81:6ec4:0:b0:599:8bd:5bdf with SMTP id j187-20020a816ec4000000b0059908bd5bdfmr12939145ywc.50.1699304551914;
        Mon, 06 Nov 2023 13:02:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwu8sPii0mHvN82gfhq3El1gSX8d327M87x2vx64H9lWif+3Q9VbzTEqfhbPwC2eFLGTv9b7dQGpaZMGNVaOY=
X-Received: by 2002:a81:6ec4:0:b0:599:8bd:5bdf with SMTP id
 j187-20020a816ec4000000b0059908bd5bdfmr12939136ywc.50.1699304551754; Mon, 06
 Nov 2023 13:02:31 -0800 (PST)
MIME-Version: 1.0
From:   Jonathan Wakely <jwakely@redhat.com>
Date:   Mon, 6 Nov 2023 21:02:20 +0000
Message-ID: <CACb0b4mpEWz6D-4SjYmLJsOfdYoSJ1Y2Bri+aFKcgKstXQt33g@mail.gmail.com>
Subject: Two STANDARDS sections in strncpy(3)
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The strncpy(3) page has two STANDARDS sections, which disagree. I
think maybe the second one is supposed to be HISTORY.

https://man7.org/linux/man-pages/man3/strncpy.3.html

