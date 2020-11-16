Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B13C2B50F1
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 20:23:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729196AbgKPTWd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 14:22:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbgKPTWd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Nov 2020 14:22:33 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F3AC0613CF;
        Mon, 16 Nov 2020 11:22:32 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id j7so20016748wrp.3;
        Mon, 16 Nov 2020 11:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=14bPYV2knZJtYUG1KcgdCm7PQP7xKN/R/o8I5J+Sbyk=;
        b=FuVwPzVmOTUPtrPxtRZbjLhpKfT2RmPp7UVJTe3wEwPsnvgpu0EpcaZeMULYwNRMvw
         wDcKDVf5uiKY2j6T7oGUqpmE/vtYlYmk3PGA/jh3pq8kMXda+QMWNwQ7yzFs65ak11kL
         TcuNM0JdofNCMyn7YZVn6O0Nde+eJa0T5nCLYMdjADDQhE6fupj/wJrCBGf3Hevw93aH
         FtOZTshGSntgHELGHHOcXwnM0UuVj5MKCi8AQzCViNuVYbnLNJuQNnH1RB05nm4nIuJ3
         q9AHkx/YJWeOK9NrUTyI0MSsCTMZhMu6WEsSg/XiOgJBeNFLCiEuvyEEt8/RVo+sbYY6
         y0kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=14bPYV2knZJtYUG1KcgdCm7PQP7xKN/R/o8I5J+Sbyk=;
        b=Y9+Q42Fm8LWkwYe1JmRtk97sHXSsuYYocvf/lGjksECson5m6zOv9YqMy4HZ1vs0pA
         TGkijlKpUTYo00AL7RbEy4g+X505QtsCqbCUS8v1ptgNTHH3BPz4+wd5HbVBxM36lE0u
         gIcE1zkLoLeFpWjIGxwF+nxvgrXugfoVcb7NLspFfVzmJT8fp73XIdEPL38Nc9xJytQq
         CkIbp60UGClrvf6zfoYyvx1BYU/0oPibjUh5F5zxBU9lribUh/f9EgETV7f8/rN2+Esm
         1Hx/ANwUEcOwvNkYeYd31W6wTzAB9T+ydgwpwLov1Kup19GIRNsr9PBbFjKQqOmZb3J+
         nliQ==
X-Gm-Message-State: AOAM532xUc0o5I+amGavFCRmlz5CE9FiWw2pHXRu3Nxg32E9f/vgHLH9
        zi+UWoaW2W5ZDdcGHA/zNNs=
X-Google-Smtp-Source: ABdhPJxWiKfLDy0RD/0V+R0zWI4yxEbQZv4EsqYOwuuzep0F3uc01mXvnZrO9ISZBkALAIC5xC5jbg==
X-Received: by 2002:a5d:614e:: with SMTP id y14mr22482984wrt.25.1605554550837;
        Mon, 16 Nov 2020 11:22:30 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d10sm24099050wro.89.2020.11.16.11.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 11:22:30 -0800 (PST)
Subject: Re: [PATCH v4] perf_event_open.2: Update man page with recent changes
To:     Namhyung Kim <namhyung@kernel.org>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Andi Kleen <ak@linux.intel.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@redhat.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-man@vger.kernel.org,
        linux-perf-users <linux-perf-users@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ingo Molnar <mingo@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Song Liu <songliubraving@fb.com>
References: <20201112103240.18363-1-alx.manpages@gmail.com>
 <20201113212622.15031-1-alx.manpages@gmail.com>
 <CAM9d7cjfbF7vR8dOM0EWSESEkO5m+AyawunNg4C3y8kziNNRdg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <19b639c1-27aa-4392-3b21-76704765ef14@gmail.com>
Date:   Mon, 16 Nov 2020 20:22:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAM9d7cjfbF7vR8dOM0EWSESEkO5m+AyawunNg4C3y8kziNNRdg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 11/16/20 5:17 PM, Namhyung Kim wrote:
> Hello Alex,
> 
> On Sat, Nov 14, 2020 at 6:28 AM Alejandro Colomar
> <alx.manpages@gmail.com> wrote:
>>
>> From: Namhyung Kim <namhyung@gmail.com>
>>
>> There are lots of changes as usual.  I've tried to fill some missing
>> bits in the man page but it'd be nice if you could take a look and put
>> more info there.
>>
>> Signed-off-by: Namhyung Kim <namhyung@gmail.com>
>> [alx: ffix + tfix]
>> Cowritten-by : Alejandro Colomar <alx.manpages@gmail.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> Hi Nahmyung,
>>
>> I fixed another typo,
>> and mainly fixed many formatting changes I introduced
>> a few days ago because we were discussing about
>> trying to improve the formatting,
>> but finally decided to continue with the old way.
> 
> Thanks a lot for fixing them!
> 
> I also found a broken formatting below and would like
> to add more description of PERF_RECORD_SAMPLE.

Hi Namhyung,

Fine, could you send an updated patch with the changes?

Thanks,

Alex
