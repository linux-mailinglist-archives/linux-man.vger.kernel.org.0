Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEDB9494036
	for <lists+linux-man@lfdr.de>; Wed, 19 Jan 2022 19:53:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356925AbiASSxZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jan 2022 13:53:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230509AbiASSxZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jan 2022 13:53:25 -0500
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com [IPv6:2607:f8b0:4864:20::92c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1AA1C061574
        for <linux-man@vger.kernel.org>; Wed, 19 Jan 2022 10:53:24 -0800 (PST)
Received: by mail-ua1-x92c.google.com with SMTP id c36so6250539uae.13
        for <linux-man@vger.kernel.org>; Wed, 19 Jan 2022 10:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t741u0pOjAq/0E4DoOzRCde26eoSVwttQ66wHoIjuPg=;
        b=fLm4zEh5kDISfU9N+8a5+bTxmNidEpen7iBfgod9Nd2oahfkC3e/V66QukFEtXnw/m
         r9cVLDD25KhMikuDyb5PXetAExGODF14ls93IDokzUPSlpnvb1a3laI3KBLmhWw2hU6S
         dRIxRjXX3djCt0ei3o+D0Ywno0oaw2WN5uQF55l+yBSTrukc8edtcq1juw7koEg2KCa7
         W6/mO2F/uILJ4TjMHkAx8GsZSwuXrRyaDe7u3vryCzh5HEc1aNvwFBjiAZLrEWxaUTTq
         XxqVYqec+Wk8j7gm94ih8V6Pec+u2/lGrZvBjRfJZvheoA7PA+89Ws9eceN56uHFAlD1
         MdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t741u0pOjAq/0E4DoOzRCde26eoSVwttQ66wHoIjuPg=;
        b=iJ13GEO9jmxM6efndEkKCjAZUQ8Gxh0vO0FW7u/jIqmRyes9KSbs6MaIFNLw3/3Q5b
         KxHXagczKenfgfhTns0tEBBhGKNtFpCdEFGfM0Vbn4oJu5biVwmFI/o0ohNHy8RL5Sev
         BYH6SlsQ8gAr3f5mrnT+qVXHr4IIyewYT6HhI1ukM21Zs2jUi19KBjQxtT1a2vQXTJye
         S251y4KUiMGG5LgVDWRaEjsTHnsZQ2oGcr2Th1KFwUKZocGCCx0nfOwetdG4y3JWSUDe
         KmRP58NTMQoKxIYDQt1NdgXMFDEmt+/OupY5io6AkRLQv76F+fKsSZoaazbffRQuPz3t
         zM/A==
X-Gm-Message-State: AOAM532j3xMznRtve8f/9S39/IZYANl1xN0MQZJxEi+pnxSP10ONtBWP
        fKbRHZJQBc9OLsVRp396PcPfL8J+m/BI8b0R8WIbTM9h3Fo=
X-Google-Smtp-Source: ABdhPJw5HEY5QbT3r29l41rFJzDt+7N7TKFdjnrkx2ITIKDZhm/5/6IM78dqWK+TD+ZNyu7+y2AA42IjHhprrbwEgAg=
X-Received: by 2002:a67:e3a7:: with SMTP id j7mr12539899vsm.81.1642618404155;
 Wed, 19 Jan 2022 10:53:24 -0800 (PST)
MIME-Version: 1.0
References: <CAEKt+7MZuL3-=6HSaM_JjGougVXcsDq=JN0OUXAfTQpT8LDKtg@mail.gmail.com>
In-Reply-To: <CAEKt+7MZuL3-=6HSaM_JjGougVXcsDq=JN0OUXAfTQpT8LDKtg@mail.gmail.com>
From:   Stefan Rohrbacher <stefan.rohrbacher97@gmail.com>
Date:   Wed, 19 Jan 2022 19:53:13 +0100
Message-ID: <CAEKt+7P4ViB13mUmZJ1r5CnWeH_N8HGu6-Rj+HR2p684a3SjDg@mail.gmail.com>
Subject: Fwd: getline() manpage typo
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

To whom it may concern

Dear Sir or Madam,

I am writing to you because I believe I have found a typo in the
manpage for the getline() function provided by stdio.h.
I am using version 5.12 on Fedora 35 but it is also present in the
current version 5.13.
The typo is  located in the "EXAMPLES" section at the bottom, there
the variable "nread" in line 10 is of type "ssize_t" and I believe it
is supposed to be of type "size_t":

       [...]
       int
       main(int argc, char *argv[])
       {
           FILE *stream;
           char *line = NULL;
           size_t len = 0;
           ssize_t nread; <-- supposed typo here!

       [...]

Thank you for your time.

yours sincerely,

Stefan Rohrbacher
