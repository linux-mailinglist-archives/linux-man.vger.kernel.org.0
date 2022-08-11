Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CD44590814
	for <lists+linux-man@lfdr.de>; Thu, 11 Aug 2022 23:31:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236406AbiHKVbb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Aug 2022 17:31:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231284AbiHKVb2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Aug 2022 17:31:28 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5B1B6A484
        for <linux-man@vger.kernel.org>; Thu, 11 Aug 2022 14:31:27 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id s206so18196868pgs.3
        for <linux-man@vger.kernel.org>; Thu, 11 Aug 2022 14:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=Nk3eERbf/lIrPgziKXft3wHDR81A3GDhM56bA9hFVcA=;
        b=JRCeEKThte+jSxS54aIghs9fAPTTfkdKbiRcHOlERRHkFeNx1LgyN9VeoswKD61nd7
         MnqztxoB7Y0CFUxl7bEnpdmYx6crfoM/Espb4iNnRvku7S8KwC7d/386hFSomnz+AUDg
         IMykg1Loll7AaRGpK5UW3rzvQuUe7OtO9iBsuxOBck7Zp43GRQ/cSKMYHX0V/9F16FMf
         XfC0ApDeXNnNQp6ZxNtEgddqQarvPiSP4RuGc8JomONcYp7d6zVwf4dAi8gJdOSlfUst
         OIB9yiAIbF9WrEHudzzHig3HbsamnGHkGLqRtnmLFi5Lv+KX4+U0DLyHhCtfXLsILKdG
         ajGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=Nk3eERbf/lIrPgziKXft3wHDR81A3GDhM56bA9hFVcA=;
        b=TazaFEFAdGhGdedFPQ3y5SaWB9sj9cYSnb4A3ATGzE+glSZe+9mvWD7SQnLyJu7PJc
         kdzHicT8abGJJrTurRmBClXTFu6q4QL3RjfjNbRdZoAOUvKOkmV5PMyCnGVU+iAScsdj
         8EU9Mzs8qzt6hsCPB4CkhLeVqxfFMGyYmVzpyR+5RidreTk7b8Sm3At/3cJJ8BX3a4Ry
         agEf/FZthVvbobQ4UdPYUWoeFO+dvUFMiorNkW2iGflomORGXj7fhsK8Przp8yjaM5oR
         BIQtmSItxwoPNPQc5ByclerMukZhDG04z3klH3Fo74iYp2xvX/yLhUB4RfNcsPmlkNu+
         wxuw==
X-Gm-Message-State: ACgBeo3Fl5tIlGax7sCfyfvSIW3C1gnoyJnTMQXQ48wyMQzBrfleCAfZ
        9Y5lFC6IWwamz4NWgdNdxq0IvlTID01A/QuD176x65vU7ABYmQ==
X-Google-Smtp-Source: AA6agR55HSdB4rbktaUCcIUhKwU2HrwsoFIkIBWsXqPHT0z5ck7wzH7JJFgHYqVP3lcQJffp6p2ySgxGNS9MMIG0HKY=
X-Received: by 2002:a63:4964:0:b0:41c:c1c3:8836 with SMTP id
 y36-20020a634964000000b0041cc1c38836mr693594pgk.346.1660253487006; Thu, 11
 Aug 2022 14:31:27 -0700 (PDT)
MIME-Version: 1.0
From:   glibg10b <pugonfireyt@gmail.com>
Date:   Thu, 11 Aug 2022 23:31:18 +0200
Message-ID: <CAAEVSTFUvVPEXuF6PoefJ2YCuUBCS-tZ9+YRNZBmhMN76O8v8w@mail.gmail.com>
Subject: Typo in mount(2)
To:     alx.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Section "SEE ALSO":

> mountpoint(1), chroot(2), ioctl_iflags(2), mount_settatr(2),

mount_settatr should be mount_setattr
