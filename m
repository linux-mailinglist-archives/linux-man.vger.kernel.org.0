Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C1B4298384
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 21:47:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418733AbgJYUrX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 16:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418732AbgJYUrX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 16:47:23 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 335D7C061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:47:23 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id e17so10199110wru.12
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CJdsTTLiQyH63M9qribczDe1Fmn4qwyBJA1fMGhUQGk=;
        b=aqc3w6x1APyfqJLlwej0RzqV0MLX7e0I7BnjUuG+xcgXyeB639n+tZ6lTcSji0itHR
         kic/3vlTljgJOm9qtdbL9haC1Ux6fALs9zdepZXhjVnSIoGVrckr+9uuPsoblKjy+wie
         cL2F3kwDQQnrSanZ3kUPI6v9CaEcywpxvo0utr5sjq1uZVHWPhXi04YCWhMvQNSDQ4ax
         Wy96dIxLv38I+1l8Hf6rUNt02a5dt0cZZxp00KBux+e86oj1sy8213DybhS1z5tgn1CU
         17vCt1YmrCSbfREPSGIkNV8TiWblySGXz2ch1ZcP+RwmyAVp4rZ6mgIuT1Lrm7uWukWD
         eQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CJdsTTLiQyH63M9qribczDe1Fmn4qwyBJA1fMGhUQGk=;
        b=V9rBb9R+JvC8qxe0WXLjMCwUPK+cX5EFklOKKXf3WacQ1pcBBCV8PbvyiwNT45lJ28
         XRH4zVyX1mPlbJIts2MQrT5adu/AEfo1TB4JJFIBCdZo8QscT0l5wE0PiacijhG0Fo21
         oaWEY4q9T9WKiYrQDe9r41zeS7e2gO0I+DSL0rJs/kHLWjB3aCrvWb+XrwiscWIPTf5R
         047h76vyDzrAuMHghom0oVFtFAVUEhoLPTlFclKottNAwYWGQbS+BVjVxHM5QrYLWGjQ
         CVV8ybGpxUdOia/+gHZNEdza0pTk1bwoYzHIUDAFHW7T2MqCfZNWDl4YpTPJk/eM/6Df
         sbfQ==
X-Gm-Message-State: AOAM532+Fhzs0tG+eF2t3VfGocmBlpNxIv3RvbmK8TY4P/hAZ6Bw+MFf
        vXgRI2qD2bo/Emf7cnAYLGg=
X-Google-Smtp-Source: ABdhPJzJFIC+dwuaTOqxzNtF92ol2FKUCoZeFI9GRnpCgR42AWBPpw2IH3XZoIOuHfAFTj1uow9WVQ==
X-Received: by 2002:a5d:4c8d:: with SMTP id z13mr14318898wrs.412.1603658841680;
        Sun, 25 Oct 2020 13:47:21 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p11sm18700339wrm.44.2020.10.25.13.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 13:47:21 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 0/3] Move queue.3 to queue.7
Date:   Sun, 25 Oct 2020 21:46:15 +0100
Message-Id: <20201025204617.6802-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I think this page belongs in Section 7 now.
I agree that it needs a link for legacy reasons;
otherwise, many hyperlinks to the online queue(3) would break.

I'm sending you the commits as I wrote them,
I don't know if you prefer them separately or squashed.
Feel free to squash them together if you prefer.

Cheers,

Alex

Alejandro Colomar (3):
  queue.3, queue.7: Move queue.3 to queue.7
  queue.3: Link to queue(7)
  circleq.3, insque.3, list.3, slist.3, tailq.3: SEE ALSO: queue(3) ->
    queue(7)

 man3/circleq.3 |   2 +-
 man3/insque.3  |   2 +-
 man3/list.3    |   2 +-
 man3/queue.3   | 149 +------------------------------------------------
 man3/slist.3   |   2 +-
 man3/tailq.3   |   2 +-
 man7/queue.7   | 148 ++++++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 154 insertions(+), 153 deletions(-)
 create mode 100644 man7/queue.7

-- 
2.28.0

