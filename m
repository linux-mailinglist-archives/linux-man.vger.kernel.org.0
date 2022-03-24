Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DEC84E5C63
	for <lists+linux-man@lfdr.de>; Thu, 24 Mar 2022 01:38:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238643AbiCXAjy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Mar 2022 20:39:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346807AbiCXAjw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Mar 2022 20:39:52 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A48322980C
        for <linux-man@vger.kernel.org>; Wed, 23 Mar 2022 17:38:19 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id r22so6078900ejs.11
        for <linux-man@vger.kernel.org>; Wed, 23 Mar 2022 17:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=7ZCY0uH07U1MUpAYLWG3XXspeD+QGvMI3yD75RD74MM=;
        b=ck3MWzKh3w/ycN/wViDK78xoWp/k7sg+T+kpe4MJ2BXEIt20swQesdhwuQ/Q4mp2a8
         5MBygPah7cT6Aq40FQ1Ay/c5rtG4GrsHEmiYt/yUZ2abxBf13g5PwJNOAtX4oqxnkTzq
         C553b2FRhnMiCcj7lN51ibs1F1rXzmrX2Vly6icJpdscJPiVCtlL9iiTurjBQJml960s
         QUP8NlVo3v02DUY3YUddzud9axudB7uDZQVahwZlIj4IOzXcY5PWqlL0iG5uc/dGpYk6
         6cJ5KDDGvs7UTpcWGTO/DzSDuamyfwy1tZDiGljGffjPV8dk2tpFMZQOX3i9QbHtffyB
         KWNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7ZCY0uH07U1MUpAYLWG3XXspeD+QGvMI3yD75RD74MM=;
        b=oW8IMW3Z4nLRrQxNNPGDgV2/6ESN0V9ShOAHhB5FGN+himQMtDmeDN1LYc9FZLdSgD
         6mMgAihwvoY0fp1NndhJ/378cc4kJmDIj7PdYcJN5q/tWM8G6eiBXKE6Mh039FAg6ilX
         JHifJDzMl7qnYgShexGiX4y9wxRPk2VS1MaUxtqpWFE7aLNoXIC3SHfqTrysUkGSlgCV
         wGKbyZxhRyvXV4QxrB1jlSKzkB7gRDpLhOehp1bLTunHG3/NkPSJgO4Mi1Tmk4p8ZG0o
         qgYLlfT9YyqkfPIuPgwjba4gNUGV02k2NVrKLxqqhwF7cxaB5xKhIRVQ2csb1sOVR97Y
         KE9Q==
X-Gm-Message-State: AOAM530f3ocKA8+tbn6njjZnyxeoHEcVhDtZRvfXYSWa/DwYLrK57rOU
        2lTnSjIhU4qtOsHbsGS8lqyFfNiCEwhl7AqcFzC2Ytaw3Qc=
X-Google-Smtp-Source: ABdhPJwYvTRUO/i3+9O/mBeSF4yyR9NGdzZCHZj8vUXNdB43ENd3ZwbGMYhJ1J7Lh1PmSitBm2Wz/zdJo+tQYxtVEhs=
X-Received: by 2002:a17:907:7815:b0:6ce:5242:1280 with SMTP id
 la21-20020a170907781500b006ce52421280mr3010020ejc.217.1648082298028; Wed, 23
 Mar 2022 17:38:18 -0700 (PDT)
MIME-Version: 1.0
From:   Wayne Campbell <wcampbell1995@gmail.com>
Date:   Wed, 23 Mar 2022 20:38:07 -0400
Message-ID: <CAPjwPKqouG=U+rq04B2GL7Ba=1bgAVy4CeVoPO6StF0-csXYqw@mail.gmail.com>
Subject: [PATCH] recv.2: match recvfrom arguments
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Match second recvfrom() definition with the first definition after
  "is equivalent to" that uses NULL instead of 0.

  Signed-off-by: wcampbell <wcampbell1995@gmail.com>
  ---
   man2/recv.2 | 2 +-
   1 file changed, 1 insertion(+), 1 deletion(-)

  diff --git a/man2/recv.2 b/man2/recv.2
  index 884c86355..9e8a94bfe 100644
  --- a/man2/recv.2
  +++ b/man2/recv.2
  @@ -309,7 +309,7 @@ socket (see
   .BR connect (2)).
   It is equivalent to the call:
   .PP
  -    recvfrom(fd, buf, len, flags, NULL, 0);
  +    recvfrom(fd, buf, len, flags, NULL, NULL);
   .\"
   .SS recvmsg()
   The
  --
  2.35.1
