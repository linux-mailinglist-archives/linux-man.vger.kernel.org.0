Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0BAB6F24CC
	for <lists+linux-man@lfdr.de>; Sat, 29 Apr 2023 15:18:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbjD2NR6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Apr 2023 09:17:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229659AbjD2NR6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Apr 2023 09:17:58 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 671F9171F
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 06:17:57 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-b991bac987dso142210276.1
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 06:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682774276; x=1685366276;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Zl1Bd2xelPdaBHl6yWD8fe3T6SkhvAPlzRvSh91w2uM=;
        b=KDWKa7hRwYDl9SWLjCTNBev2WTlZ2qKBj3prAUnQGATb5IaKcfzhkWxprXVdG5KNZa
         Ye+ujq7Aj2coFNYr8AB/aLAliWcXjwZslNxt7WEh38orhLl0PTugHcjj07GJHDqMW6Gk
         DT8j1H68xEyVjrjkIPl3Mr1un4nNaakVIAemb1mkr0pKlfPywZwta6INXSFncU1+Xqeu
         DcYMfZipn0U8hpUqLl7FFLIoFXm1gSpiKgR+7fImhsaOgDz7UPi5S4a00yvTnImkyDR0
         yRA+4yV61BzaoI9NTdXjiT1v2gmoYzh0YaFjchrHXxmcUmN0aagLDlXhcgm3lloeZXSv
         yczg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682774276; x=1685366276;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zl1Bd2xelPdaBHl6yWD8fe3T6SkhvAPlzRvSh91w2uM=;
        b=EWXICo72zBElp/pdUblRkKxRq/uJtP99FbAtGF3I3AHy5pVPUWTLUqyO1D0lgIHuZq
         ttzb+2nmfL36ECQKVp4XPBSHjxuZwD3Y+Uf8ee5bmMzRui28jURW+DKboQbgNqEAA1og
         pd/gI0i9QCf74UCenUZM/YLKPi86b0naIHKyRV0Y1INDwxaG7OUTuYIwCa+R1ibuwAt2
         6z6m50RCaDSpHramuhpuViEo7zfk5yFwXntGXlaUujDLfkfYQ2q4bN1nFgSpKyLxzerz
         jhNwCMw8MBTBhGsv8KUJVqAKHiivvdb2hI1cDT4wMXf36WQQemqupx3tH/q0dXLGKidE
         ajPw==
X-Gm-Message-State: AC+VfDy0AB4UqUwXuHHC+LusrXDSKZZN8G39+Jl/+339TykPCmnDN3X0
        Tn//OC9z/3cw6+SfwgqLOBBeGnGeON69Y7V5u1aik2Puad6WBg==
X-Google-Smtp-Source: ACHHUZ7r+CJMJsEPybwKXeoxwBTjfTRDix21rv8SrKjyPrhVjUsQcRXbxPg3dUFr+vbmiji4o7RDUXNGJ5VgfC4LCoc=
X-Received: by 2002:a81:fd5:0:b0:556:e93c:fbe with SMTP id 204-20020a810fd5000000b00556e93c0fbemr6608882ywp.5.1682774276529;
 Sat, 29 Apr 2023 06:17:56 -0700 (PDT)
MIME-Version: 1.0
From:   Askar Safin <safinaskar@gmail.com>
Date:   Sat, 29 Apr 2023 16:17:20 +0300
Message-ID: <CAPnZJGB4GkUUc7o_Fac1jjS8+jfsTUsOMpdCmAkn84ScQ-fpPg@mail.gmail.com>
Subject: fsmount, fspick etc manpages are still absent
To:     alx.manpages@gmail.com, dhowells@redhat.com
Cc:     linux-man <linux-man@vger.kernel.org>, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi. I look at https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man2?id=d52ff90035ceedfab4d34b4316b94519a0864e21
(is the link correct?) and I see that manpages for new mount API
(fsmount, fsconfig, fspick, etc) are still absent. When they will
appear?

I see drafts of the manpages here:
https://lore.kernel.org/linux-man/159827188271.306468.16962617119460123110.stgit@warthog.procyon.org.uk/
. When will they be ready?

Please, CC me when answering

-- 
Askar Safin
