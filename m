Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 356E0BEAC6
	for <lists+linux-man@lfdr.de>; Thu, 26 Sep 2019 04:57:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728625AbfIZC5J convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Wed, 25 Sep 2019 22:57:09 -0400
Received: from sender4-of-o52.zoho.com ([136.143.188.52]:21232 "EHLO
        sender4-of-o52.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726824AbfIZC5J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 22:57:09 -0400
X-Greylist: delayed 904 seconds by postgrey-1.27 at vger.kernel.org; Wed, 25 Sep 2019 22:57:08 EDT
ARC-Seal: i=1; a=rsa-sha256; t=1569465720; cv=none; 
        d=zoho.com; s=zohoarc; 
        b=mQBUahaxMYN7ryKU3t3STBOH/M4MVFHqmAKvcsp6KBw+Oe19ivl+ehw2KxqBENmoe0kuKsica4LvmZYosSybVMurVTOl/7ZE5o5QIh+Mglw5vZzVkAHRv0/SR6CYxAPXMWK7aastbZOwdxXy1ZwKgAw4ZSMPBiAUVZohH4+IKDk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com; s=zohoarc; 
        t=1569465720; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
        bh=By1mS7XtMXSW6amLKqzKtEPZIMQWbhFUbl2l8+7e2Ew=; 
        b=EpYb8EYLPoAfyFIPUshVHsQOsBONGcBMHNG2M5stcoKycXhWRs+GAAN1ncwag4un8iONedrTUFVQqxt9K0XUE6ip9vSnNkoWvvNumtZsNIyplxGcI69ChrFPDLBWfCh+au0Aq4HN5jmUdtkotReyOY2Umo8xHBTOKbFMvjhKT6E=
ARC-Authentication-Results: i=1; mx.zoho.com;
        dkim=pass  header.i=ianhunter.me;
        spf=pass  smtp.mailfrom=ian@ianhunter.me;
        dmarc=pass header.from=<ian@ianhunter.me> header.from=<ian@ianhunter.me>
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41]) by mx.zohomail.com
        with SMTPS id 1569465718158695.3393517937299; Wed, 25 Sep 2019 19:41:58 -0700 (PDT)
Received: by mail-ed1-f41.google.com with SMTP id t3so505004edw.13
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 19:41:57 -0700 (PDT)
X-Gm-Message-State: APjAAAWvVqCO40uMwh7BlMc4D3pZu/vSNrJUznAvlmt8d2DzxrRIIwVq
        1r2P+4lui6dNmdnFbVTX+w1zwiZqB2hupfu8g8w=
X-Google-Smtp-Source: APXvYqzAL7WAB9G3T7zVPnD9e0W4Taka1JJCaS3G2svnRjDU9HQgF6RocVSCq9iheZ42Bt0nfCDSlWJuwEWB8lSNEUo=
X-Received: by 2002:a17:906:4e8f:: with SMTP id v15mr1197718eju.57.1569465716626;
 Wed, 25 Sep 2019 19:41:56 -0700 (PDT)
MIME-Version: 1.0
From:   Ian Hunter <ian@ianhunter.me>
Date:   Wed, 25 Sep 2019 21:41:30 -0500
X-Gmail-Original-Message-ID: <CAB+My4xQ8w=8E71JzzhG+kwZ+x8OM1W1Jtoya_gDMwbcyVoBbA@mail.gmail.com>
Message-ID: <CAB+My4xQ8w=8E71JzzhG+kwZ+x8OM1W1Jtoya_gDMwbcyVoBbA@mail.gmail.com>
Subject: Error in read.1p
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
X-ZohoMailClient: External
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

The man page for read.1p incorrectly uses a unicode minus ("−")
instead of a hyphen ("-") in places where flags are being used or
described. It made searching for the information on the "-r" flag
difficult. :)

Thanks for your help and hard work

Ian

