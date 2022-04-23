Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6591950CCA3
	for <lists+linux-man@lfdr.de>; Sat, 23 Apr 2022 19:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236625AbiDWRkS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Apr 2022 13:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236599AbiDWRkS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Apr 2022 13:40:18 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1E791C82C7
        for <linux-man@vger.kernel.org>; Sat, 23 Apr 2022 10:37:20 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id j16so10482610vsv.2
        for <linux-man@vger.kernel.org>; Sat, 23 Apr 2022 10:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=binghamton.edu; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=v0bbefsDW2ZUB5t4njTxvF0bxpj47Ftv49vC0daTDBc=;
        b=gL0ro4VhAa5BhMRB+BoQVlw6OlE8Sq6QmBlT4yeeJ5CRrxW3MTZilQ0kFeTfrjLqjl
         TxeZr0f8P5y95fGDkVJ2W561rNhElPpVLnZ8BUYRL+ZPL+EU1m34ZwHtSLRtice3bQq9
         E/c2hrkWHGb8vUZyFuUBS2MVNy95HBVdFGt6k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=v0bbefsDW2ZUB5t4njTxvF0bxpj47Ftv49vC0daTDBc=;
        b=GtVebz6jn7GxDZCMgJdM/jXecpohIojw/bbSIGVi9MdWYHD55JEfr66qJF/WCgNxkX
         DKckbjkGrezQsNW7rBrCgJTVcAzfWXkrHPJwyS2k8WcFvXFfIFIM2qhBYLzWV76i1v8f
         UZxXgZKvE+6yd3FgRkIAAYfCjjMiet3tEJOkNea0IipGUlLaJd0S4LXQEuVADbikz9rN
         2KyDBtjiURZLKrmXE/CgfzgJYE25P/BEntbi3G2Wy1USZ+C8EJlHfvLztTfBQ2h2Ufqf
         doqlzlAhIfDV30g8SQFHd6XEN28oWtv9HHkuuZeyQqAn1FKkuXzVldqVVNGhcEbLI6SC
         bXsQ==
X-Gm-Message-State: AOAM5337yY38tJLA6OX5xqjcW+oXwboYzdxuzQ+FzKr89W+fhw3zGPD4
        D+k3LpxZuGrxOAJsSzrVWPwU60tdCK8wuRfXn/xQiYy5iv3TFA==
X-Google-Smtp-Source: ABdhPJyqpTHC1+TTdt2Kho7Z7lO1DgdxEMydfUyUZbuoGnG2kN+pBq/ncLBp8FqWpHPpUzOSfKsNs3fzmSu9DMZAm0M=
X-Received: by 2002:a05:6102:3746:b0:32c:bc05:7191 with SMTP id
 u6-20020a056102374600b0032cbc057191mr466360vst.59.1650735439955; Sat, 23 Apr
 2022 10:37:19 -0700 (PDT)
MIME-Version: 1.0
From:   Zerksis D Umrigar <umrigar@binghamton.edu>
Date:   Sat, 23 Apr 2022 13:37:09 -0400
Message-ID: <CADg6VD5bioFr+vi78QrNM-x36QEFPmj6B6fnD9pbUps9qp8apg@mail.gmail.com>
Subject: mq_open() and O_CLOEXEC
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The mq_open(3) man page seems to have standard boilerplate for O_CLOEXEC:

       O_CLOEXEC (since Linux 2.6.26)
              Set  the  close-on-exec  flag  for the message queue descriptor.
              See open(2) for a discussion of why this flag is useful.

This implies that message queues remain open across an exec when this
flag is not specified.

However, this is contradicted by mq_overview(7) which states:

       The  close-on-exec  flag (see open(2)) is automatically set on the file
       descriptor returned by mq_open(2).

I suggest that the O_CLOEXEC be removed from mq_open(3) or be replaced
by something like: "O_CLOEXEC: this flag has no effect since the
close-on-exec  flag is automatically set on the file descriptor
returned by mq_open(2)".
Thanks
-zerksis
======
