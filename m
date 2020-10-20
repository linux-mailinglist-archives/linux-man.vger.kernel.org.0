Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C7EE293E8F
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408032AbgJTOXh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:37 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3474C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:36 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id n6so2376231wrm.13
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ctXdjrzJlVHvsEsqybh2PQrneHNCl16T2yG++nEQNtg=;
        b=D12hc1CCYVzQxZkJX9sCFbwr+VLH48UQSWgR5ei3TZrfvKUUppqI/qQmItT2Ftx/jJ
         Yunu9bzTA3Sa3wB6vQfq6QQn0NDanIz/e1z3bco9gSzPpzdvdJVus6v+oIh9bI7MqO19
         UL7xaIIkL8SqfdPEQraYOYQslM/ovzqqSQK6A5SVhjTP1pTh8QbWV1yrivYjBTlffriq
         6SysfE7YxMcqtCbw0JmSy0DBF/YXMZTn64ZN6k62tN6LmgDMcTUqM3Iwxmg7qJu1waWN
         YKAp/dUeedSAkp/DqVTGXGgDZrmoaGBxoJufudrlwQzx++Tb90i+i9jnxel9UptOS8VX
         YhQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ctXdjrzJlVHvsEsqybh2PQrneHNCl16T2yG++nEQNtg=;
        b=jxo5DYj8STc0ltuA56uXj3sbmE+QXh7QjDBjhqoIfhGKpIhasog4wOoJob/3Hwb6kp
         p37pKoop49FrjQzfAiEK1DuE1OQeF023/fO8rTgQu0zZvDIUhEdTAPceEzavp+iKmLGp
         fPYji+5Q3g2WjAzQG0bYSAtEJ04rCkBRZPZctCn9DCz1ELJuUp82ZlD8ACZr6TWxHAt2
         Qp3oaOtCEzZRez2LX/vshjgFth6grwl/vYHuhNa8ZYaNdZMENUOu4ONtCK4EbLjn6jJ9
         5ul5DPhxNNys651z+g5WQDlcbHArdJiE6aUfDjI6IT+orJM06nBAryNFRwketx8NW0Sl
         f+Pg==
X-Gm-Message-State: AOAM531h1a3oLMIzBmv5CfJ7+Zr7PWlPpaBv09Dpo06pXCrUt8JDlmSN
        36IHtELTQBOwgF6Qhj/AUWw=
X-Google-Smtp-Source: ABdhPJwg9eHpMwWRLfjxr7I9vyNHviZ3VvoCQ7Y33yLCzs9QnuM6nSx5jXsqbVPIL4giLact2zshag==
X-Received: by 2002:adf:e849:: with SMTP id d9mr4146707wrn.25.1603203815713;
        Tue, 20 Oct 2020 07:23:35 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 14/22] list.3: DESCRIPTION: Remove line pointing to the EXAMPLES
Date:   Tue, 20 Oct 2020 16:21:39 +0200
Message-Id: <20201020142146.61837-15-colomar.6.4.3@gmail.com>
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
 man3/list.3 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 5b2a72fdb..71b35c26d 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -255,8 +255,6 @@ from the list.
 .\" .I head1
 .\" and
 .\" .IR head2 .
-.PP
-See the EXAMPLES section below for an example program using a linked list.
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
-- 
2.28.0

