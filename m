Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3083D770EBD
	for <lists+linux-man@lfdr.de>; Sat,  5 Aug 2023 10:22:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbjHEIWj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Aug 2023 04:22:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjHEIWi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Aug 2023 04:22:38 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E93B1FE3
        for <linux-man@vger.kernel.org>; Sat,  5 Aug 2023 01:22:37 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b974031aeaso43987031fa.0
        for <linux-man@vger.kernel.org>; Sat, 05 Aug 2023 01:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691223755; x=1691828555;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=H6PtyFsD3HkPh+jUm272ZS8lGbInyYb0akeMZDlbj2sJ+HFc/6OVzMiCvpFyrpdCp3
         HygFgoh3+TWDJQnG4+rhMKpQvq0n/UC1auAaYEXjUtQTDvDMHlCg8oJzCHO0YT9Pr/r1
         DjjcosF1BJ5v3Wmaw0VYyo5pcJVvB29Rs7K6h9QO0yt3/BPOEpOxDBTOA/9N9G3zZ/ye
         p06hF0/4DAKSHrHKPX2Kzv9Jmw/BQJys9QE6rFysLspk5w2/77lNoU4seoed+8A+r8Qv
         dJaQrOTt37YF3Vt61ykVyT7h4BOL2eF5+TfRoNs6Q2+zYBmyx0KeHnmTXcns/rZToW9W
         q93g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691223755; x=1691828555;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rL+TycpMQLfB5P4Zn9xgGfUWg8yPCNTwrE46ZNldMM=;
        b=FRO9Y38K13fWyFVq6rO3U/gg3xQv9JBWOAPZlMFJk29l6xHSqZF7mXEl2pLkJtetdi
         c1q/G3/AvQxqECpwNa3bd6i8SyXdZtuYiXvb4oy18qA9ur5z7Cu63Gq/2Ljeldeyo8j1
         KXuTipSopK53cyU+c9iivqPfla7Uifqgrbpg2RID7PTLHODnr3ZAyeKW2U5eL8NagYg8
         L2U3VSBrq25xhSABVd0QpsgkfGoctMP8emYDXLODuhjG49k/mSsHkwj+Xn5+uIn/Y8TN
         LBS3/170vwRnyEq16mL5XJeaMxQx+eS5a7IuSLY3HNc+hVLS7oAiWB0g7MkwzMT8qKHp
         YTOw==
X-Gm-Message-State: AOJu0YxOjEtdJyq0cu05Q2OF1yY/982NwXE+A4Z3hy3THh8GaaYk6qqP
        EtHVt12P/2DYJMLBHi29pXF+FMtasvzB8VCITJY=
X-Google-Smtp-Source: AGHT+IEHg2gAg4cm4O3/+RWF9/XXnvRb8Cdv1ZIPPncybT4xcIyDTN4emJmIwtkx48RA1Z4c12/bMGZ3fabwyDRSQN0=
X-Received: by 2002:a05:6512:3b8f:b0:4fb:8948:2b28 with SMTP id
 g15-20020a0565123b8f00b004fb89482b28mr3702198lfv.63.1691223754952; Sat, 05
 Aug 2023 01:22:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:321:b0:26f:35d4:eb87 with HTTP; Sat, 5 Aug 2023
 01:22:34 -0700 (PDT)
Reply-To: dravasmith27@gmail.com
From:   Dr Ava Smith <harrykuunda@gmail.com>
Date:   Sat, 5 Aug 2023 01:22:34 -0700
Message-ID: <CAKN7XSXsaT5vdWYUgOB0iOgpDnKyWfiYGgCq9iSn_irAoDLZBQ@mail.gmail.com>
Subject: GREETINGS FROM DR AVA SMITH
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,SUBJ_ALL_CAPS,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

-- 
Hello Dear,
how are you today?hope you are fine
My name is Dr Ava Smith ,Am an English and French nationalities.
I will give you pictures and more details about me as soon as i hear from you
Thanks
Ava
