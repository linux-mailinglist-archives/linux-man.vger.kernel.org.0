Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8C95E7A84
	for <lists+linux-man@lfdr.de>; Fri, 23 Sep 2022 14:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232073AbiIWMWk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Sep 2022 08:22:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbiIWMV6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Sep 2022 08:21:58 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 515D0133CB6
        for <linux-man@vger.kernel.org>; Fri, 23 Sep 2022 05:17:28 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id m130so16167102oif.6
        for <linux-man@vger.kernel.org>; Fri, 23 Sep 2022 05:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=FcyQcUXi9xALQQ6Lm7VNXiWYStBjH/LCUTADg6v4m+k=;
        b=KyNkXozJX5ps9hGGGfbbILOmRbisUnw7dUIV20AvRsenSPnNVFjDJiFZNWnNrmzJR6
         3JkDGlVUgOL5YAtVJorb5dt2zYMgEjutqKCm9UNUQtVvC6xn3wNaZAYIU/fkC7v2DWOC
         DjThjagNfg9Ai/QscCjgSePZI7TQ0IObUlrms77J9ypNmui5ssoF1YpLBFNYPrG5BGX1
         0Sg5xmxIzVx+5yfZ13FY+dT6Flss7Iqy2OflHqv2Y4z/kDo2iU3oN62vs92AWmAZC38q
         CAqV+2xbyL0OTBY/CtD1YSBiBZhdAQ0+qaKDF8ChC0SiP2bkgqfcQfwj7a3amlMNi969
         nKew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FcyQcUXi9xALQQ6Lm7VNXiWYStBjH/LCUTADg6v4m+k=;
        b=3BpABceWJZl8InrYHJESd14nmkNS3Lih6M+7vxHrC6MOnAFNNxXbcAcFUk/6O02C8S
         fI25YK4P4ReTu+dNS2qB/2Dbf4+w62WI4k//qD3AYcri1X7bwrl8p5p7MRPh8rBirjnY
         UAF79LBNIImhmduhXG4Rg6Q4S9BwHSFQGeqZGIcyOITIvu8ozauTuY2wKYZYvhjBEZeW
         vreVu30zs79SN/xlDKpHJBavHn5x2dkful3cEJgVmpQZ48cpTspfdVdtzCrPXm6JsBDm
         m1wkqd4CUefIUM4cevHHTJVeomlx8mcfetVjeSk3rz2hchHJmUzFTWuWHIClA2MmShJN
         u4OA==
X-Gm-Message-State: ACrzQf14db7UpXENqwDDN8T4zYDJG0cLYIymm3SNClWb4RP/g+1tgEss
        U4+DjWpkk8nTC5GGk++i6wRQ7fTgFPQHIcw5pAw=
X-Google-Smtp-Source: AMsMyM4hqYcqGm4XsnZW0I3F9mKQNpTVarqWK6v7hTeNSPNndBhyRgL7pI26Ddoo2bGClCzJbCI4/fqWo7roESJpKhQ=
X-Received: by 2002:a05:6808:3187:b0:350:3194:c29e with SMTP id
 cd7-20020a056808318700b003503194c29emr4000504oib.174.1663935447742; Fri, 23
 Sep 2022 05:17:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:7e8a:b0:a1:ada:7451 with HTTP; Fri, 23 Sep 2022
 05:17:27 -0700 (PDT)
Reply-To: linadavid0089@gmail.com
From:   Lina David <desouzabayi7@gmail.com>
Date:   Fri, 23 Sep 2022 13:17:27 +0100
Message-ID: <CADVjuPrmvkNUKG8CFch_8-+GCu4BwSOmFuW-+bW_pkMVd2Y61w@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:231 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4999]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [linadavid0089[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [desouzabayi7[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [desouzabayi7[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

-- 
Hello,
how are you?
