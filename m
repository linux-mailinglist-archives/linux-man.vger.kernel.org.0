Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7166D27A434
	for <lists+linux-man@lfdr.de>; Sun, 27 Sep 2020 23:14:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726392AbgI0VOT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Sep 2020 17:14:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726309AbgI0VOT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Sep 2020 17:14:19 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B137EC0613CE
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 14:14:18 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so9760136wrm.9
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 14:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xZytKs0NjUlhA3iuewY0mrGwnlQNC3ttR34ZB+3uokk=;
        b=Ghgxvri3bwdUovy+bjEIICNonT9dRQB2A9DsJAadup6wBBLN65agYguJ2arXhxtVS5
         ngKOBIBFjHJP+Nf1fuTJ521ETx7Wk6S5+eQUDcitmlI0DebdTOANB93bk4K4+W489xyD
         WlzoiVnGA3fYVpLmWMBYvOMaAq+IA0jgI3sxTiXCPoySYYCPxF1qlhE5Lva7xn7ri2yy
         R26T4R1Ub8CuaGkvmXxWRe8EUOuQQQs5JY/I6pWgxumEvcV9cHPdv0IguGfPOSzyhIVL
         NOt7GgSZCnpyhLkXFBkpmSHv+e4+mteMjCpUsq/LPALmhs/ojPS3Xa9niaqpRkGheCSP
         d0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xZytKs0NjUlhA3iuewY0mrGwnlQNC3ttR34ZB+3uokk=;
        b=gh8M2FC+nk32KTbY2ymgkBLS7MDfVneUmtHszB7MLW6KGZIqeGQdx8WEKLmHqA9jwj
         O969bJL+JBPdeNeDMg+2h5KGfHtSwBTfT0i+2jp2ymBnpaDWUTG0HOo6lINXF4rErHRj
         4XYUxUFlbGNB7IhP7ACFAwQVAsU4JAAlhOLrMg8/omfrF/JPlw2Y1w3Pn1UFr2y0B22h
         Ca7FF9y3KV2/DdS5NpIXz+bJmGOam1msw9PVhg4YsRFzSSaVOHi+zl4NeKczfQw+yABJ
         4x/6Req1KxMWPVYF+2IuGb/YkC3QnPZxx+aqBXczuExMczjzUfoRDCAUHQ3Kvp9DUkyF
         vIUg==
X-Gm-Message-State: AOAM533wRt6nq1YpCKREPzzTXm9bDhS/rIpNJ25CaX1ip3NaAiBPGcDl
        dfWdvAbd7XmZy0LuDIdtzPaiDGm0iuk=
X-Google-Smtp-Source: ABdhPJyBHrYQVGa5zWzi9pslofOvtELvS2OuXF3nzjIcxqERRlP+a1W0Crbj3Q9u5z9sx9ihhWcmEw==
X-Received: by 2002:a5d:4682:: with SMTP id u2mr16541451wrq.254.1601241257400;
        Sun, 27 Sep 2020 14:14:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id k8sm6817277wma.16.2020.09.27.14.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2020 14:14:16 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/3] system_data_types.7: Add 'FILE'
Date:   Sun, 27 Sep 2020 23:13:44 +0200
Message-Id: <20200927211345.20433-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
References: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index ff0403df9..16930985e 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -197,6 +197,29 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 See also:
 .BR fenv (3)
 .RE
+.\"------------------------------------- FILE -------------------------/
+.TP
+.I FILE
+.RS
+.br
+Include:
+.IR <stdio.h> ;
+or
+.IR <wchar.h> .
+.PP
+An object type used for streams.
+.PP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.PP
+See also:
+.BR fclose (3),
+.BR flockfile (3),
+.BR fopen (3),
+.BR fread (3),
+.BR stdin (3),
+.BR stdio (3),
+.BR unlocked_stdio (3)
+.RE
 .\"------------------------------------- float_t ----------------------/
 .TP
 .I float_t
-- 
2.28.0

