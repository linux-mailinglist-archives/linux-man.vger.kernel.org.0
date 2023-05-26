Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F058971226C
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 10:41:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbjEZIlI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 04:41:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjEZIlH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 04:41:07 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D841E7
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 01:41:06 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id 3f1490d57ef6-ba8a5cbb012so1247490276.3
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 01:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685090465; x=1687682465;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1bj5gpohCaYqzE79yf6xexRMBCRi1VXvkUqW+i/HzTc=;
        b=DjwX2e1s4SfGJK7Ut4WaBe494u44RrmKRE6zz2hH7OVmjhew1H+dDuDy3Np/k0k6xf
         kkI0VDFJHtAjhNx+e9HegB27cABndAjNIh01OZqxE0LLqPcsplgBFWcikE6e1nYCnEbu
         h0/d4YtdQRXtGKKNYaRo4dQCd9LtSWAeeColv43KwwkewmTtwVXZ5ku+syjaLOH//1qw
         h71axz+Nz/txwyIeNaoqeScfG5dB2G1jhMzsND/fwfWHCwGIdz6UnGJPrlT9/vjF6yZf
         vctsBcT4ZCtr6jHvWFIKkvBYVq3Esxp4LcOcbR8xfrB8o1UcGpXrJzi5ylhz8tBgT9Ne
         rqtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685090465; x=1687682465;
        h=content-transfer-encoding:cc:to:from:subject:mime-version
         :message-id:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1bj5gpohCaYqzE79yf6xexRMBCRi1VXvkUqW+i/HzTc=;
        b=XzcvyB7GLMNwKKlh+KbucPgOhWK6Wt9Qgz8mQphvFGOu/cESWiZg5YdPaXMU0GiUYk
         WSfPzCYTGRQ3Hrgc/+canKwvl0LFd1dZ2Pk03B/Q/73Cdi/4NA+PJZr0qZmvROhTXA2z
         I4zjoFQW6NB/L1+tFocskqgYUFQPkcyMAgQ9fIGT41xNK4yweFKg02zsC0U/Y+NlLpcr
         4o8YLG0SS6NZL3j319sAqeyGLSiXsw2nhyP43muc6MquTrbdiqY0ll1FKrUD8eEsp6co
         adbqAGYcI6sVb77S63DnKfiE27qsn+UCLbr3E+8UJlpJVXoSGyDZeAI16UrRMikl0nCu
         xcuA==
X-Gm-Message-State: AC+VfDxA/tPxwO20OOM0NVRlMCRsItrgfyd6cuRF8T6IfENvLgxFmVap
        Wd0hZxBk0bdjDIwCw9yakoo6LZBgw+o=
X-Google-Smtp-Source: ACHHUZ6bDTfNhmNwruAzk03hyqLcz6s+jDK2MGnankEAFqOT2uYy02GuZo8tEOzkjastEaW5+ZBUzTZ/smY=
X-Received: from sport.zrh.corp.google.com ([2a00:79e0:9d:4:df90:bb34:788b:2cbd])
 (user=gnoack job=sendgmr) by 2002:a05:6902:1341:b0:ba8:c014:ebef with SMTP id
 g1-20020a056902134100b00ba8c014ebefmr370958ybu.8.1685090465503; Fri, 26 May
 2023 01:41:05 -0700 (PDT)
Date:   Fri, 26 May 2023 10:41:01 +0200
Message-Id: <20230526084101.2629775-1-gnoack@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0.rc0.172.g3f132b7071-goog
Subject: [PATCH] unshare.2: ffix: indentation inconsistencies
From:   "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man2/unshare.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/unshare.2 b/man2/unshare.2
index 58d57a86b..1e06d8064 100644
--- a/man2/unshare.2
+++ b/man2/unshare.2
@@ -532,12 +532,12 @@ main(int argc, char *argv[])
 \&
     while ((opt =3D getopt(argc, argv, "CimnptuU")) !=3D \-1) {
         switch (opt) {
-        case \[aq]C\[aq]: flags |=3D CLONE_NEWCGROUP;      break;
+        case \[aq]C\[aq]: flags |=3D CLONE_NEWCGROUP;     break;
         case \[aq]i\[aq]: flags |=3D CLONE_NEWIPC;        break;
         case \[aq]m\[aq]: flags |=3D CLONE_NEWNS;         break;
         case \[aq]n\[aq]: flags |=3D CLONE_NEWNET;        break;
         case \[aq]p\[aq]: flags |=3D CLONE_NEWPID;        break;
-        case \[aq]t\[aq]: flags |=3D CLONE_NEWTIME;        break;
+        case \[aq]t\[aq]: flags |=3D CLONE_NEWTIME;       break;
         case \[aq]u\[aq]: flags |=3D CLONE_NEWUTS;        break;
         case \[aq]U\[aq]: flags |=3D CLONE_NEWUSER;       break;
         default:  usage(argv[0]);

base-commit: 2aa85ce3b0a85fbf6909e873c78959c2fbcc25ac
--=20
2.41.0.rc0.172.g3f132b7071-goog

