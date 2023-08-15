Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7363D77CBE6
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 13:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235554AbjHOLmd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 07:42:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236846AbjHOLmN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 07:42:13 -0400
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57B621BCE
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 04:41:56 -0700 (PDT)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-583312344e7so75153377b3.1
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 04:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1692099715; x=1692704515;
        h=content-transfer-encoding:to:from:subject:references:mime-version
         :message-id:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=obAbIbS7XqquK4zz1OqYKWDIclTZmTK1inDezRR5dj8=;
        b=ZPYUHlYChh9seRtjLo31t2DJ8/koGsOQgmF2rtBTmm9epni+GG+xbR8m+IgTdrkZmy
         kai1bLIEYqTDdust0ZW714BgxKo4mwsLipwn4k5VkTadX3ut8smY4EeCL0Jm/zYX77q7
         XLMVl5IyF9gODMuzNe7RrtHTpO1C9AWt6hzaPCy35QngqZkpdYmdj3xSBW8MCQbYBarY
         v3q21znE5CmLpOTRFOCdhmK/u9rdHCY9HQt73NWYNnBlVfnVLkuWckZf0mpzn6GhRIoa
         Gbh2bQlr9+yky665vyau2BtTdo1TzU0Um+wiZrb1LJ0Wo8WFE7ET1f/3TAKttd2+sTjS
         ynNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692099715; x=1692704515;
        h=content-transfer-encoding:to:from:subject:references:mime-version
         :message-id:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=obAbIbS7XqquK4zz1OqYKWDIclTZmTK1inDezRR5dj8=;
        b=VDhTkGQuHFMcKOCsZYLCRyn4riSFsmAQ4Vw76TxRuHypk9a9JWvj0WlsNtIj37YPSu
         BrqYKGj1yEss43HxFcr/fio3dAypxBUqzsGzk88ZO86AfjOM8HlNZSwxbPhB/Un776I3
         fs6rqrvP4ETaCSJ/0ftvq5R+ChcJvkEZTSBa+HE+idb6w0S/x4A5YWpgC128i2mZ3jV4
         dEiuropE/qYUbRv///Uwha0A4TAgVLQH5X1MnhOzMLW6mUTvCKhs5JWiMFxzYmJ1p+ul
         KZ18MGUhPx/gl/INfGV59PN3i74MeEqtTZ/UcgdTwoCJm6fBm6Cj5b2c/CMrpLAk38ya
         b/IQ==
X-Gm-Message-State: AOJu0YzI5GQcwxQDGhIMS+LV+3RcwtEe9vOxbFXWKy7rqC9vId5sSnbA
        SOCI3lQ+KsUamDtJd65D2Q4kglBFHyo=
X-Google-Smtp-Source: AGHT+IHUHeUMzga2V+DeyR+fhbbHM5B3kE6vpkw33aIIcWvBKvPYt0wHJ3UKSOVvLleLb9iQKBu1CBsqy00=
X-Received: from sport.zrh.corp.google.com ([2a00:79e0:9d:4:ec5f:191c:8a86:f8a])
 (user=gnoack job=sendgmr) by 2002:a81:ae4f:0:b0:581:3899:91bc with SMTP id
 g15-20020a81ae4f000000b00581389991bcmr161958ywk.6.1692099715617; Tue, 15 Aug
 2023 04:41:55 -0700 (PDT)
Date:   Tue, 15 Aug 2023 13:41:53 +0200
In-Reply-To: <ZNrsvD9KCmaBEYnO@dj3ntoo>
Message-Id: <ZNtkgXnQVs2pF8f7@google.com>
Mime-Version: 1.0
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org> <ZNrsvD9KCmaBEYnO@dj3ntoo>
Subject: Re: proc(5)'s sashimi
From:   "=?iso-8859-1?Q?G=FCnther?= Noack" <gnoack@google.com>
To:     Alejandro Colomar <alx@kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Aug 14, 2023 at 10:10:52PM -0500, Oskari Pirhonen wrote:
> On Mon, Aug 14, 2023 at 16:06:16 +0200, Alejandro Colomar wrote:
> OTTOMH, I can think of some prior art WRT to "namespaced/split man
> pages" in at least git, btrfs-progs, and as of recently it seems,
> cryptsetup.

There are also the ioctl_* man pages which are similarly split up
and which are prior art within the man-pages repo.

It seems like a good idea to split up proc(5). =F0=9F=91=8D

=E2=80=94G=C3=BCnther

--=20
Sent using Mutt =F0=9F=90=95 Woof Woof
