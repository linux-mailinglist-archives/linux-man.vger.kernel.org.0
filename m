Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 444AA293E87
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408009AbgJTOX3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOX2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:28 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C647C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:28 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id b8so2414977wrn.0
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ooWKgXtl7+i0OdUVJrJVNZ0tTjyx5Kvg9se5OmZPWgo=;
        b=rXzIIniqG6X8ncGvAHCFSE2oZ0h91owm4TaktkMpTOt2Grw+vmttIHfynqWmeq/m3e
         FzuLqbDoN9z8JVJezmbt6tAGxZzoj4xl0qwz7Bh1DCH7xE8NaAHk08iZ0hHKnxdMCqZf
         0es6Y3iaLizoyIL7VRRBui5JAhflzNHZvd+4AtejCBi+kufibW9lfbfLOq4mGmu7m2Zt
         GPNh4U0oH41ueuGuilGHByRRpJWnDFeSwUQnjAUW7xG2WlPOs3E/BszsEN30nCVHzH1c
         KAORWcEeHlrD4+0B0a0Of1Ar5LujJxVAMWvG7HtZXOKsQjAuJubIWktT2z45FqPxgCyI
         PcLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ooWKgXtl7+i0OdUVJrJVNZ0tTjyx5Kvg9se5OmZPWgo=;
        b=hktUTZvd80PMx95NJuP6ysNwNqwgremnv0mX+vFdwgudvTbUu0H/zMz+0tWGasZoaC
         J713SNKNjR0qR9FE3lcssU+dMnDnWV/d3iJh9SH1TAgwRV147l5KZTo0MnCbu+3LTAaR
         rhv0p9LTVZRAc8FWYinjyTqrIQYm6K0IfO6S04CcmgBYCC6YqvW0BltPmD2bGXygyIl7
         7JLgnJ9pHUO7Y1LaQx2ozjX3ihYDb0j1guyeJicyekCGE9mM6yM0yYnsDXK575dgPTZ1
         pGm54X8+xyrwgPzYEPyKl/qxh2O9WiLFqB1qrNZe2RUfsHWMf5ss402gGVOYMOJe4WoW
         3idg==
X-Gm-Message-State: AOAM530F+PzzJ0a7OdKh8cMF312RaQlGO2gjoWZgn1t43a5F9he3MeE4
        NMOAzlb3Aegoycg5tYyQmmMoa4PSjOc=
X-Google-Smtp-Source: ABdhPJxfG8Cc/Pn10CRYneMivx9RTxwlkqDxvz5X7+clJZ8WkZhfOWLUJHIYYLIvEuXehWx93SV4QA==
X-Received: by 2002:a5d:424e:: with SMTP id s14mr4186223wrr.149.1603203807171;
        Tue, 20 Oct 2020 07:23:27 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:26 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 06/22] list.3: SYNOPSIS: Copy include from queue.3
Date:   Tue, 20 Oct 2020 16:21:31 +0200
Message-Id: <20201020142146.61837-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man3/list.3 b/man3/list.3
index c43832098..0ea135900 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -50,6 +50,8 @@ LIST_REMOVE
 .\"LIST_SWAP
 \- implementation of a doubly-linked list
 .SH SYNOPSIS
+.In sys/queue.h
+.\"
 .Fn LIST_EMPTY "LIST_HEAD *head"
 .Fn LIST_ENTRY "TYPE"
 .Fn LIST_FIRST "LIST_HEAD *head"
-- 
2.28.0

