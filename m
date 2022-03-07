Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41F714D0510
	for <lists+linux-man@lfdr.de>; Mon,  7 Mar 2022 18:14:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242415AbiCGRPr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Mar 2022 12:15:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234566AbiCGRPq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Mar 2022 12:15:46 -0500
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DACC88F633
        for <linux-man@vger.kernel.org>; Mon,  7 Mar 2022 09:14:49 -0800 (PST)
Received: by mail-qk1-x72c.google.com with SMTP id bm39so12546109qkb.0
        for <linux-man@vger.kernel.org>; Mon, 07 Mar 2022 09:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=tF/O0ufi77tB2QC4phVZIyHxB1oBLg6gvUBoM3QQSGA=;
        b=R3HOvAr9rp/KXfnBEUWrlD6CLwkGj54h9GtGotlKWoOVJPt38Xwmva3G8+GgUnGOHN
         TlVEZE/gkJbQJVyWk/YEU3q/dXRxhC6HUo8op0kp7vuiZfT/JFyQNsmMaHKe8EaoyfcC
         qNJDJw0o+Dr4/Qhv4n7sCIW0YA1DCv7g76UDFd+1SJkoOrOAUzH88Ds0GLI6+LXf9j9a
         qtUpqzzne0jRcZx2jLynEiCovYjwnxPzJj31VrPGgaVIp8j79B25mTRehpnkFP2nai68
         UBL+UCvNfuDFI78W5gYPl4dLht5tyaZipUf84oXZ2gmJvXj+yixBSyVX6vJ2aN00FdR/
         83dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=tF/O0ufi77tB2QC4phVZIyHxB1oBLg6gvUBoM3QQSGA=;
        b=ozCW+8u/z9Z/zth991MFC1aET5ehpqftXjGnXMSAm+iSM1pZSMqt1e7pK5TvketL5J
         2s9YxeiQl/emPkLPPqmU6f1CGkWbwZUjZFc4jZVSFQ1yYVU9MKFw38+UGLKbR9mUJUj9
         D91wM0u0q63fVM8Qql8/tSZLh7YBTEDUICY+8BES2z4K6TXwaCuqmG/Mn/cEZd3dscKh
         GAPu6O/ELw8DJ51GQOr65dLvvmgw2r/n3TXj9jVPwtnWgwaGY/WirYBMx7MwyDQe6uMM
         LJI5X4PWU5u8DalWiUc3m+E/akDIfVTezRCAgl8N2b4ySMVL7bYOSuAcONb3mbE/5W7O
         MwPQ==
X-Gm-Message-State: AOAM532omZOO9RwY7rlWniuq9Xu1vm6lx16Xgrx0pfiX6ZyQXdYx7aHr
        /dDCiqX7647eTXy2o/IbEejE9KNtpDdWZ7hoGco=
X-Google-Smtp-Source: ABdhPJzYuOP7pbDrFWZj//6Ux2wpHSD3s8A8msIlculcQehb7y0tpO/C+2v8EmG0Z+GwGRCiMMkc/cgyJqrE2L8SIjk=
X-Received: by 2002:a37:8806:0:b0:662:e9a8:e93e with SMTP id
 k6-20020a378806000000b00662e9a8e93emr7554803qkd.79.1646673288833; Mon, 07 Mar
 2022 09:14:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac8:4e0d:0:0:0:0:0 with HTTP; Mon, 7 Mar 2022 09:14:48 -0800 (PST)
Reply-To: rob1grahn@gmail.com
From:   Robinson Grahn <robi.m.grahn@gmail.com>
Date:   Mon, 7 Mar 2022 18:14:48 +0100
Message-ID: <CAG72vaEq=9fqSRUS9Zk+RKSJ4-GU-F6raL2y8RZ3U51-Vnhz_Q@mail.gmail.com>
Subject: re -
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.4 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello dear,
  I never heard from you regarding the letter I sent to you, WHY?
Please, I still await your response in the affirmative.

Regards,
Robinson Grahn
