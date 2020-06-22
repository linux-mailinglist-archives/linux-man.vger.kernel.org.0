Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 159FB2039BE
	for <lists+linux-man@lfdr.de>; Mon, 22 Jun 2020 16:40:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729259AbgFVOku (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Jun 2020 10:40:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729264AbgFVOku (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Jun 2020 10:40:50 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAA66C061573
        for <linux-man@vger.kernel.org>; Mon, 22 Jun 2020 07:40:49 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id x16so5981905wmj.1
        for <linux-man@vger.kernel.org>; Mon, 22 Jun 2020 07:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=b/ZRPbO8jsQKAFFQpnOLSOnkjIHUqWfO82MHB5a0+1w=;
        b=jeNWePCV8fEHC28VmMLDR0hcF8/TzYcioCh80X3lFwfPCdyev/6tUOK/RGyWeleLkd
         /c03VHHSrXTSoMhXEXLFSJa4VKVp4fh3gdDhi1rUQO1gFRche4nfCnPzXqpEROHWNuO2
         CryB52Suc6G5Gr51/+xYWj5ahHrD+ret7Hla3KlH+NsSml+QovJ00bY9vUODpuYlKZJQ
         ioRYHfT7TbqoYSckwsmWynCuiCvdY/VZw/UJcf+6m7CWZGf/c7mev86oi3DhaKw5ucMB
         ofmyHhkzc0SE8LSbskq3hxRuPpRryHAZAORUPFzDAK8hn4IWc2IlZPZMb55vxXPSCc/E
         7LyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=b/ZRPbO8jsQKAFFQpnOLSOnkjIHUqWfO82MHB5a0+1w=;
        b=dE/twLGNYwvhjjXObFgsAXvwvd+N23Ajz/gBtCFTy3bbgjqsdKoigi4nueBBZnFdmI
         CqPTT+zqm2rVD+CP3eiwKlf7lFsNVOyU3rPIMF2I39Z8fROGsuQcQEDCVLttAHTK+Dqv
         MgUg8zSkZvYGu5QhF5mVXPzN1YFlDszaupz5bW3usa9BMkdPI3+kBR7EydwJfnXy6+bg
         cJuxAD13Zf9qfjcGPonFUo1XcBdeC40O4/wNpqzsbPusdtEpy9c8nU52ASoL9ecSwVF+
         ivKSENZY0sNfZLPmTnf36CNZ1gNrycEmJDhnMV6MjqVapEKfRF5SJvgOmlPLuBlz2tBF
         BM2g==
X-Gm-Message-State: AOAM530npzDDx0U1mW+mKNfKqV8QnPosUNqD5bwqXMOMuFHfImZdIH9m
        Ap0j/dzCh/s6XrtWPhxLi01D2eZ0WCo2Y3reuhGoPb/Igvc=
X-Google-Smtp-Source: ABdhPJx9Z8G15wDSa9wSc9hytD0X3mIMXeNW5+Sn6NvmelqVS/vxlcu4KIfqX6pT5f+W3DJnCgmaxbfJvWi/WshS3Gg=
X-Received: by 2002:a1c:ab04:: with SMTP id u4mr19989269wme.52.1592836848201;
 Mon, 22 Jun 2020 07:40:48 -0700 (PDT)
MIME-Version: 1.0
From:   Luiz Henrique Laurini <luizhenriquelaurini@gmail.com>
Date:   Mon, 22 Jun 2020 11:40:37 -0300
Message-ID: <CADry9i-r-r_W6w3ta1rMYbycZZmg-sT=ftuDBVvsoqDtkCG8eQ@mail.gmail.com>
Subject: Clarify in fcntl(2) whether using F_SETFL, F_GETLK, F_SETLK, and
 F_SETLKW on shared memory should behave the same as for a normal file
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is my first time posting to any mailing list, so I apologize for
any mistakes.

The fcntl(3p) says:
When the file descriptor fildes refers to a shared memory object, the
behavior of fcntl() shall be the same as for a regular file except the
effect of the following values for the argument cmd shall  be
unspecified:  F_SETFL, F_GETLK, F_SETLK, and F_SETLKW.

However, fcntl(2) says nothing about that. I think it should clarify
whether or not using these values with shared memory objects is
expected to work the same as with regular files.
